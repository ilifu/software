---
name: lint
description: Run the repo's linters (yamllint + ansible-lint) over the Ansible tree or a specific file/role, report findings, and optionally fix them. Use when asked to lint, check, or validate Ansible/YAML in this repo.
---

# Linting ilifu/software

Both linters must be run **from the `ansible/` directory** so `ansible.cfg`
provides module/role context and the local `.yamllint` / `.ansible-lint`
configs are discovered. This is identical to what CI runs.

## Run the full check

```bash
cd ansible
uv run yamllint .
uv run ansible-lint
```

A clean run prints `Passed ... Profile 'production' was required, and it passed`
for ansible-lint and nothing for yamllint.

## Lint a single file or role

```bash
cd ansible
uv run yamllint roles/compiled/tasks/bio/samtools.yaml
uv run ansible-lint roles/compiled/tasks/bio/samtools.yaml   # whole-project rules still evaluated in context
```

## Division of responsibility

- **yamllint** owns YAML validity/style (`.yamllint`). The lint-on-edit hook
  runs this automatically on every edited `ansible/**/*.y*ml`.
- **ansible-lint** owns Ansible semantics (`.ansible-lint`, `production`
  profile). Its `skip_list` documents deliberately-deferred rules
  (var-naming, multi-template task names, and build-from-source patterns like
  `no-changed-when` / `command-instead-of-*` / `latest[git]` / `no-handler`).

## Fixing

- Safe, mechanical rules can be auto-fixed: `uv run ansible-lint --fix=fqcn,jinja,name`.
- **Never** blanket-add `mode:` to `copy` tasks that move binaries — use
  `mode: preserve` so executable bits survive.
- For `mode:`, prefer symbolic (`u=rwx,g=rwx,o=rx`), never unquoted octal.
- If a finding is a genuine false positive for this build playbook, add it to
  the `.ansible-lint` `skip_list` **with a justifying comment** rather than
  silencing it inline.

After any fix, re-run the two commands above and confirm both are clean.
