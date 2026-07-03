## What does this PR do?

<!-- Briefly describe the change. For new software, name the package, version(s),
     category (common/bio/astro), and whether it's compiled or containerised. -->

## Checklist

<!-- Tick what applies; delete rows that don't. -->

- [ ] **Linters pass locally**: `cd ansible && uv run yamllint . && uv run ansible-lint`
      (ansible-lint reaches `Profile 'production' ... passed`).
- [ ] CI is green on this PR.

If adding/updating software:

- [ ] **Double tag wired up**: the software-name tag (+ `never`) on the
      `include_tasks` entry in the category `main.yml`, and the version tag
      (e.g. `samtools1.22.1`, + `never`) on the leaf task file.
- [ ] **Checksum set** on every download (`checksum: "sha256:..."`).
- [ ] **Module/container template(s) added**: `.lua` (compiled), or
      `.def` + `.sh` + `.lua` (containerised).
- [ ] **Symbolic file modes** (never octal); `mode: preserve` when copying
      prebuilt binaries.
- [ ] Uses the path variables from `ansible/group_vars/all` (no hard-coded `/software/...`).
- [ ] README software tables updated if this adds a user-visible package.

## Notes for the maintainer

<!-- Upstream URL(s), anything unusual about the build, or context for the
     manual install on the cluster. -->
