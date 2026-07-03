#!/usr/bin/env bash
# PostToolUse hook: lint a just-edited Ansible YAML file with yamllint.
#
# yamllint on a single file is fast and reliable, so it runs on every edit for
# instant feedback. Full ansible-lint (which needs whole-project context) is
# intentionally left to the `/lint` skill and CI, not run per-edit.
#
# Reads the tool-call JSON on stdin; exits 2 with findings on stderr so Claude
# sees them and can fix, or 0 (silent) when the file is clean or out of scope.
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"

file_path="$(python3 -c '
import json, sys
try:
    data = json.load(sys.stdin)
except Exception:
    print(""); sys.exit(0)
print(data.get("tool_input", {}).get("file_path", ""))
')"

# Only handle YAML files under ansible/.
case "$file_path" in
  "$repo_root"/ansible/*.yml|"$repo_root"/ansible/*.yaml) ;;
  *) exit 0 ;;
esac
[ -f "$file_path" ] || exit 0

# Run from ansible/ so the local .yamllint config is discovered.
rel="${file_path#"$repo_root"/ansible/}"
output="$(cd "$repo_root/ansible" && uv run yamllint "$rel" 2>&1)" && exit 0

echo "yamllint found issues in $rel:" >&2
echo "$output" >&2
exit 2
