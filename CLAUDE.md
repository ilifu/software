# ilifu/software

Ansible-based software installation management for the ilifu HPC cluster. Manages 200+ packages across three domains (common, bioinformatics, astronomy) using two distinct installation strategies: compiled from source and Singularity containers.

## Repository layout

```
ansible/
├── group_vars/all        # All path variables — edit here to change software root
├── site.yaml             # Top-level playbook (runs all, compiled, containers)
└── roles/
    ├── all/              # Creates the full /software directory tree (always runs)
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

Every task has `tags: [never, <software><version>]`. To install you must supply **both** the software name tag and the version tag — this prevents accidentally installing all versions:

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
