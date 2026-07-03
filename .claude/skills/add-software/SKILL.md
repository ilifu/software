---
name: add-software
description: Add a new package (or a new version of an existing one) to the ilifu software stack — scaffolds the task file, registers it with the correct tags, creates the Lmod/container templates, and verifies with the linters. Use when asked to add, install, package, or bump a version of any bioinformatics/astronomy/common software.
---

# Adding software to ilifu/software

Two installation strategies exist. **Pick one first:**

| Use **compiled** (`roles/compiled/`) when… | Use **containerised** (`roles/containers/`) when… |
|---|---|
| Language runtimes, MPI/BLAS/FFTW, tools where performance or system integration matters | Complex/conflicting dependency stacks, GUI apps, proprietary binaries, anything needing OS-upgrade reproducibility |
| Builds with `./configure && make` or a prebuilt tarball | Needs a Singularity image built with `sudo singularity build` |

If unsure, prefer **compiled** for a single self-contained binary/tarball and
**containerised** for anything that drags in a large dependency tree.

## Category & path variables

Category is one of `common`, `bio`, `astro` (also `ilifu` for internal tools).
Paths come from `group_vars/all` — **always use these variables, never hard-code `/software/...`:**

- Source downloads → `{{ <cat>_src }}` (e.g. `bio_src`)
- Install root → `{{ <cat>_dir }}` (e.g. `bio_dir` → `/software/bio`)
- Lmod modules → `{{ <cat>_modules }}` (e.g. `bio_modules`)
- Containers / recipes → `{{ <cat>_container_dir }}` / `{{ <cat>_container_recipe_dir }}`
- `admin_group`, `singularity` binary path, `software_root` also live there.

## The double-tag rule (critical)

An install runs **only when both tags are supplied**:
`ansible-playbook site.yaml -t <name>,<name><version>`. Wire this up in two places:

1. The `include_tasks` entry in the category `main.yml` carries the **name** tag
   (`samtools`) plus `never`.
2. The leaf task file's top-level `tags:` carries the **version** tag
   (`samtools1.22.1`) plus `never`.

## Adding compiled software

1. **Find the source URL and checksum.** A `checksum:` (sha256) is mandatory.
   Compute it: `curl -sL <url> | sha256sum`.
2. **Create** `roles/compiled/tasks/<cat>/<software>.yaml` (skeleton below).
3. **Register** it in `roles/compiled/tasks/<cat>/main.yml` with the version list.
4. **Add the Lmod template** `roles/compiled/templates/<software>.lua`
   (copy an existing one in the same category and adjust paths).
5. **Verify:** invoke the `lint` skill (or `cd ansible && uv run yamllint <file> && uv run ansible-lint`).

### Compiled leaf-task skeleton

```yaml
---
- name: Install <software> {{ item.version_number }}
  vars:
    <software>_dir: "{{ <cat>_dir }}/<software>"
    <software>_module_dir: "{{ <cat>_modules }}/<software>"
    url: "{{ item.url }}"
    version_number: "{{ item.version_number }}"
    checksum: "{{ item.checksum }}"
    install_dir: "{{ <software>_dir }}/{{ version_number }}"
    unzip_dir: "/dev/shm/<software>-{{ version_number }}"
  tags:
    - never
    - <software>{{ item.version_number }}
  block:
    - name: Download <software> {{ version_number }}
      ansible.builtin.get_url:
        url: "{{ url }}"
        dest: "{{ <cat>_src }}/<software>-{{ version_number }}.tar.gz"
        checksum: "{{ checksum }}"
        mode: u=rw,g=r,o=r
    - name: Uncompress <software> {{ version_number }}
      ansible.builtin.unarchive:
        src: "{{ <cat>_src }}/<software>-{{ version_number }}.tar.gz"
        dest: "/dev/shm"
        creates: "{{ unzip_dir }}"
    - name: Run <software> configure {{ version_number }}
      ansible.builtin.command: "./configure --prefix={{ install_dir }}"
      args:
        chdir: "{{ unzip_dir }}"
        creates: "{{ unzip_dir }}/Makefile"
    - name: Build <software> {{ version_number }}
      community.general.make:
        chdir: "{{ unzip_dir }}"
      environment:
        MAKEFLAGS: "-j {{ ansible_processor_vcpus }}"
    - name: Install <software> {{ version_number }}
      community.general.make:
        chdir: "{{ unzip_dir }}"
        target: install
    - name: Ensure <software> module dir exists
      ansible.builtin.file:
        path: "{{ <software>_module_dir }}"
        state: directory
        mode: u=rwx,g=rwx,o=rx
    - name: Install <software> module file {{ version_number }}
      ansible.builtin.template:
        src: <software>.lua
        dest: "{{ <software>_module_dir }}/{{ version_number }}.lua"
        mode: u=rw,g=r,o=r
```

### Registration entry (in category `main.yml`)

```yaml
- name: Install <software>s
  vars:
    <software>_versions:
      - version_number: "1.22.1"
        url: "https://.../<software>-1.22.1.tar.gz"
        checksum: "sha256:<64-hex>"
  ansible.builtin.include_tasks:
    file: <software>.yaml
  loop: "{{ <software>_versions }}"
  loop_control:
    loop_var: item
  tags:
    - never
    - <software>
```

## Adding containerised software

1. **Create** `roles/containers/tasks/<cat>/<software>.yaml` (render recipe →
   build `.sif` with `become: true` → wrapper + module).
2. **Register** in `roles/containers/tasks/<cat>/main.yml`.
3. **Add three templates** under `roles/containers/templates/<cat>/`:
   `<software>.def` (Singularity recipe), `<software>.sh` (wrapper), `<software>.lua` (module).
4. Ensure any **base container** (e.g. `ubuntu-noble.sif`) is built first.
5. **Verify** with the `lint` skill.

The `vars:` block of a containerised task **must be a mapping, not a list**
(`key: value`, not `- key: value`) — a list silently fails to set the vars.

## Conventions (the linters enforce these)

- **Checksums are mandatory** on every download (`sha256:...`).
- **FQCN** for every module: `ansible.builtin.get_url`, `community.general.make`, etc.
- **File modes are symbolic, never octal:** dirs `u=rwx,g=rwx,o=rx`, source/data
  files `u=rw,g=r,o=r`, and `mode: preserve` when copying prebuilt binaries.
- **Block-style YAML** for the version dicts (`key: val`, not flow `{ key: val }`).
- Unpack into **`/dev/shm`** and use **`creates:`** on build commands for idempotency.
- Keep a Jinja template at the **end** of a task `name:` (or leave it out).

## Finish

Run the `lint` skill. Do not consider the task done until `yamllint` is silent
and `ansible-lint` reports the `production` profile passed. The lint-on-edit
hook will also flag YAML problems as you write.
