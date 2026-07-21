# ilifu/software

Ansible-based software installation management for the ilifu HPC cluster. Manages 200+ packages across three domains (common, bioinformatics, astronomy) using two distinct installation strategies: compiled from source and Singularity containers.

## Repository layout

```
ansible/
├── group_vars/all        # All path variables — edit here to change software root
├── site.yaml             # Top-level playbook (runs all, compiled, containers)
└── roles/
    ├── all/              # Creates the full /software directory tree (requires -t init)
    ├── compiled/         # Builds software from source
    └── containers/       # Builds Singularity container images
```

## The two installation types

### Compiled (`roles/compiled/`)
Downloads source, compiles with `./configure && make`, installs native binaries. Creates a single Lmod `.lua` module. No sudo needed.

**When to use:** Language runtimes (Python, R, Go), MPI/BLAS/FFTW libraries, tools where performance or system integration matters.

### Containerised (`roles/containers/`)
Renders a Singularity `.def` template, builds a `.sif` image with `sudo singularity build`, creates a bash wrapper script and an Lmod module. **Requires sudo at build time only.**

**When to use:** Complex/conflicting dependency stacks, GUI apps (RStudio), proprietary binaries, anything that needs to be reproducible across OS upgrades.

Each containerised task needs three templates: `<software>.def`, `<software>.sh` (wrapper), `<software>.lua` (module).

## Tagging system

Tagging works at two levels: the `include_tasks` entry in each category's `main.yml` carries the software name tag (e.g. `samtools`) with `never`, while the leaf task file carries a version-specific tag (e.g. `samtools1.22.1`) also with `never`. You must supply **both** tags to run an installation — this prevents accidentally installing all versions:

```bash
ansible-playbook site.yaml -t samtools,samtools1.22.1
ansible-playbook site.yaml -t RStudio,RStudio2025.05.1-513-R4.5.1
ansible-playbook site.yaml -t ubuntu,ubuntu-noble   # base container
```

## Adding new software

### Compiled
1. Add a task file: `roles/compiled/tasks/<category>/<software>.yaml`
2. Register it in `roles/compiled/tasks/<category>/main.yml` with version list
3. Add a module template: `roles/compiled/templates/<software>.lua`

### Containerised
1. Add a task file: `roles/containers/tasks/<category>/<software>.yaml`
2. Register it in `roles/containers/tasks/<category>/main.yml`
3. Add templates: `roles/containers/templates/<category>/<software>.def`, `.sh`, `.lua`
4. Ensure any base container (e.g. `ubuntu-focal.sif`) exists before building

## Key config

`ansible/group_vars/all` — single source of truth for all paths (`software_root`, category dirs, modules dirs, `singularity` binary path, `admin_group`).

## Linting & CI

Two linters gate the repo; **run both from `ansible/`** so `ansible.cfg` gives
module/role context and the local `.yamllint` / `.ansible-lint` are discovered:

```bash
cd ansible
uv run yamllint .
uv run ansible-lint        # target profile: production
```

- **yamllint** (`ansible/.yamllint`) owns YAML validity/style. A PostToolUse hook
  (`.claude/hooks/lint-yaml.sh`) runs it automatically on every edited
  `ansible/**/*.y*ml`, so YAML breakage surfaces immediately.
- **ansible-lint** (`ansible/.ansible-lint`, `production` profile) owns Ansible
  semantics. Its `skip_list` documents every deliberately-deferred rule
  (var-naming, multi-template task names, and build-from-source patterns —
  `no-changed-when`, `command-instead-of-*`, `latest[git]`, `no-handler`).
  Tighten the profile by emptying that list, never by silencing inline.
- **CI** (`.github/workflows/lint.yml`) runs the exact same two commands on push/PR.
- The **`/lint`** skill runs and explains the checks; **`/add-software`** scaffolds
  a new package end-to-end following the conventions below.

### Conventions the linters enforce

- **Checksums mandatory** on every download (`checksum: "sha256:..."`).
- **FQCN** for all modules (`ansible.builtin.get_url`, `community.general.make`).
- **File modes symbolic, never octal**: dirs `u=rwx,g=rwx,o=rx`, source/data files
  `u=rw,g=r,o=r`, and `mode: preserve` when copying prebuilt binaries (octal like
  `0644` is a YAML footgun — parsed as a number, wrong permissions).
- **Block-style** version dicts (`key: val`), not flow (`{ key: val }`). A task
  `vars:` must be a **mapping, not a list**.
- Unpack into **`/dev/shm`**; use **`creates:`** on build commands for idempotency.
- Keep any Jinja template at the **end** of a task `name:`.
- **Facts via `ansible_facts['name']`**, never the bare injected `ansible_processor_vcpus`
  / `ansible_env` form — top-level injection is deprecated in ansible-core 2.21 and removed
  in 2.24. `ansible.cfg` sets `inject_facts_as_vars = False`, so a bare reference fails at
  runtime; a CI grep step gates it at PR time (ansible-lint has no rule for this). Magic and
  connection vars (`ansible_run_tags`, `ansible_connection`) are unaffected.
