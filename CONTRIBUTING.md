# Contributing to ilifu/software

Thanks for helping maintain the ilifu software stack! This repo installs 200+
scientific packages on the ilifu HPC cluster via Ansible. Most contributions
are **adding a new package or a new version of an existing one** — this guide
covers how to do that so it passes review and CI on the first try.

By participating you agree to abide by our [Code of Conduct](CODE_OF_CONDUCT.md).

## Getting set up

You need **Python ≥ 3.13** and [`uv`](https://docs.astral.sh/uv/):

```bash
uv sync            # install ansible + ansible-lint + yamllint from uv.lock
```

You do **not** need cluster access to contribute — authoring and linting happen
locally, and a maintainer runs the playbook on the cluster. See the
[README](README.md) for how the two install strategies (compiled vs.
containerised) and the tagging system work, and [`CLAUDE.md`](CLAUDE.md) for a
deeper tour of the layout and conventions.

## Adding software

The fastest path is the **`/add-software`** Claude Code skill (see
[Agentic Advice](README.md#agentic-advice)), which scaffolds everything below.
By hand:

**Compiled** (`roles/compiled/`) — builds from source, no sudo:
1. Add `roles/compiled/tasks/<category>/<software>.yaml`.
2. Register it in `roles/compiled/tasks/<category>/main.yml` with the version list.
3. Add the Lmod module template `roles/compiled/templates/<software>.lua`.

**Containerised** (`roles/containers/`) — builds a Singularity image, sudo at build time:
1. Add `roles/containers/tasks/<category>/<software>.yaml`.
2. Register it in `roles/containers/tasks/<category>/main.yml`.
3. Add three templates under `roles/containers/templates/<category>/`:
   `<software>.def`, `<software>.sh`, `<software>.lua`.

`<category>` is `common`, `bio`, or `astro`. Always use the path variables from
`ansible/group_vars/all` (`bio_dir`, `bio_modules`, `bio_src`, …) — never
hard-code `/software/...`.

## Conventions (the linters enforce these)

- **Double-tag rule** — the `include_tasks` entry in the category `main.yml`
  carries the software-name tag + `never`; the leaf task file carries the
  version tag (e.g. `samtools1.22.1`) + `never`. Both are required to install,
  which prevents accidentally installing every version.
- **Checksums are mandatory** on every download: `checksum: "sha256:..."`.
  Compute with `curl -sL <url> | sha256sum`.
- **File modes are symbolic, never octal** — dirs `u=rwx,g=rwx,o=rx`,
  source/data files `u=rw,g=r,o=r`, and `mode: preserve` when copying prebuilt
  binaries so executable bits survive. (Unquoted octal like `0644` is a YAML
  footgun — parsed as a number, wrong permissions.)
- **Fully-qualified module names** — `ansible.builtin.get_url`,
  `community.general.make`, etc.
- **Block-style YAML** for version dicts (`key: val`, not flow `{ key: val }`);
  a task `vars:` must be a mapping, not a list.
- Unpack into `/dev/shm`; use `creates:` on build commands for idempotency.

## Linting — required before you open a PR

Both linters run **from the `ansible/` directory** (so `ansible.cfg` and the
local `.yamllint` / `.ansible-lint` are picked up):

```bash
cd ansible
uv run yamllint .
uv run ansible-lint        # must reach: Profile 'production' ... passed
```

Or use the **`/lint`** Claude Code skill. CI (`.github/workflows/lint.yml`) runs
these same two commands on every PR and **must be green** to merge. If you use
Claude Code, a lint-on-edit hook yamllints your `ansible/**/*.y*ml` as you save.

## Pull-request workflow

1. Branch off `master` (e.g. `yourname/add-<software>`).
2. Make your change; keep both linters clean.
3. Open a PR and fill in the template checklist. CI must pass.
4. A maintainer reviews and runs the install on the cluster — reviewers do **not**
   execute the playbook from the PR, so describe what you changed and any
   upstream URLs/versions clearly.

Questions or a package you'd like added but can't package yourself? Open an
issue using the **Software installation request** template.
