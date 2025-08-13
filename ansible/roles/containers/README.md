Containers Role
===============

This role manages containerized software installations using Singularity on the ilifu HPC cluster, with automatic generation of wrapper scripts and Lmod environment modules.

Overview
--------

The `containers` role builds Singularity containers from definition files, creates executable wrapper scripts, and generates environment modules. This approach is ideal for complex software with many dependencies or GUI applications.

Directory Structure
-------------------

```
containers/
├── tasks/
│   ├── main.yml          # Entry point that includes category-specific tasks
│   ├── bio/              # Bioinformatics container tasks
│   │   └── main.yml      # Lists all bio containers with versions
│   ├── common/           # General-purpose container tasks
│   │   └── main.yml      # Lists all common containers with versions
│   └── astro/            # Astronomy container tasks
│       └── main.yml      # Lists all astro containers with versions
├── templates/            # Singularity definitions, wrapper scripts, and Lua modules
│   ├── bio/              # Bio container templates
│   ├── common/           # Common container templates
│   └── astro/            # Astro container templates
└── vars/                 # Role-specific variables
```

Container Categories
--------------------

### Bioinformatics (`bio/`)
- **Proteomics**: Spectronaut, DIA-NN, ProteWizard, msPIPE
- **Clinical Analysis**: ClinSV, SNVStory
- **Population Genetics**: PopGen Suite (includes multiple tools)
- **Variant Calling**: GATK, VEP
- **Assembly**: pggb, Trycycler
- **Phylogenetics**: Beast, TRIBES

### Common Software (`common/`)
- **Development Environments**: RStudio (multiple R versions)
- **Base Containers**: Ubuntu (bionic, focal, jammy, noble)
- **Visualization**: gnuplot

### Astronomy (`astro/`)
- **Catalogs**: ATNF Pulsar Catalog

Container Build Process
------------------------

1. **Base Container**: Often starts from an Ubuntu base or existing container
2. **Definition File**: Singularity `.def` file is generated from template
3. **Build**: Container is built with `sudo singularity build`
4. **Wrapper Script**: Executable script created to invoke container
5. **Module**: Lua module adds wrapper script to PATH

Singularity Definition Structure
---------------------------------

```singularity
Bootstrap: localimage
From: {{ base_container_image }}

%labels
  Version {{ version_number }}

%files
  # Copy required files into container

%post
  # Installation commands
  apt-get update
  # Install software...

%environment
  # Set environment variables

%runscript
  # Default execution command
```

Wrapper Script Pattern
-----------------------

Wrapper scripts provide seamless integration:
```bash
#!/bin/bash
exec singularity exec --bind /software:/software \
  {{ container_image }} command "$@"
```

Usage Examples
--------------

Install containerized software:
```bash
# Install RStudio with R 4.5.1
ansible-playbook site.yaml -t RStudio2025.05.1-513-R4.5.1

# Install Spectronaut 20.0
ansible-playbook site.yaml -t spectronaut20.0

# Install DIA-NN 1.8.1
ansible-playbook site.yaml -t diann1.8.1

# Build Ubuntu base container
ansible-playbook site.yaml -t ubuntu-noble
```

Adding New Containers
---------------------

1. **Create task file**: `tasks/${category}/${software}.yaml`
2. **Add to main.yml**: Include version info and task reference
3. **Create templates**:
   - `templates/${category}/${software}.def` - Container definition
   - `templates/${category}/${software}.sh` - Wrapper script
   - `templates/${category}/${software}.lua` - Module file
4. **Test build**: Use explicit tag with sudo privileges

Task File Structure
-------------------

```yaml
- name: Create Software container
  vars:
    base_container_image: "{{ common_container_dir }}/ubuntu.sif"
    version_number: "{{ item.version_number }}"
    container_image: "{{ category_container_dir }}/software.{{ version_number }}.sif"
  tags:
    - never
    - software{{ item.version_number }}
  block:
    - name: Copy singularity definition
      template:
        src: "category/software.def"
        dest: "{{ recipe_dir }}/software.{{ version_number }}.def"
    
    - name: Build container
      command: "{{ singularity }} build {{ container_image }} {{ recipe }}"
      become: true
```

Multi-Software Containers
--------------------------

Some containers bundle multiple tools (e.g., PopGen Suite):
- Single container with multiple software packages
- Reduces duplication and saves space
- Wrapper scripts for each tool
- Shared dependencies

Base Container Management
-------------------------

Ubuntu base containers are built in layers:
1. **Base Ubuntu**: Minimal Ubuntu image
2. **Compile variant**: Adds build tools and development libraries

Requirements
------------

- Singularity installation (configured in `group_vars/all`)
- sudo privileges for container builds
- Adequate space in `SINGULARITY_TMPDIR` (defaults to `/dev/shm`)
- Base containers must exist before dependent containers

Environment Variables
---------------------

- `SINGULARITY_TMPDIR`: Build temporary directory
- Container binds: `/software` is typically bound into containers

Dependencies
------------

- `all` role for directory structure
- Base containers for layered builds
- Singularity 2.6+ (4.1+ recommended)

Notes
-----

- Container builds require sudo access
- Build process uses `/dev/shm` for performance
- Containers are immutable once built
- Wrapper scripts handle argument passing
- Module files load singularity module as dependency

License
-------

BSD

Author Information
------------------

Role initially written by Dane Kennedy for ilifu.