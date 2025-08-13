Compiled Software Role
======================

This role manages the installation of software compiled from source on the ilifu HPC cluster, with automatic generation of Lmod environment modules.

Overview
--------

The `compiled` role handles building and installing software from source code, creating a consistent environment module for each version. All software is disabled by default and requires explicit tagging for installation.

Directory Structure
-------------------

```
compiled/
├── tasks/
│   ├── main.yml          # Entry point that includes category-specific tasks
│   ├── bio/              # Bioinformatics software tasks
│   │   └── main.yml      # Lists all bio software with versions
│   ├── common/           # General-purpose software tasks  
│   │   └── main.yml      # Lists all common software with versions
│   └── astro/            # Astronomy software tasks
│       └── main.yml      # Lists all astro software with versions
├── templates/            # Lua module templates for each software
├── files/                # Static files, patches, and Pipfiles
└── vars/                 # Role-specific variables
```

Software Categories
-------------------

### Bioinformatics (`bio/`)
- **Analysis Tools**: SAMtools, BCFtools, GATK, VEP, Picard
- **Aligners**: BWA, Bowtie2, STAR, Minimap2, HISAT2
- **Quality Control**: FastQC, MultiQC, TrimGalore
- **Variant Calling**: Manta, ExpansionHunter, CNVkit
- **Assembly**: Hifiasm, vg, wfmash
- **Population Genetics**: PLINK, Shapeit5, IMPUTE5, GLIMPSE

### Common Software (`common/`)
- **Languages**: Python (2.7-3.13), R (4.0-4.4), Go, Julia, Rust
- **Compilers**: OpenJDK, .NET, GCC toolchains
- **MPI**: OpenMPI (2.1-5.0), MPICH, PMIx, UCX
- **Libraries**: OpenBLAS, LAPACK, FFTW, Boost, GSL
- **Containers**: Singularity (2.6-4.1)
- **Tools**: Git, CMake, Nextflow, Anaconda

### Astronomy (`astro/`)
- **Libraries**: cfitsio, calceph

Installation Process
--------------------

1. **Download**: Source code is fetched from official repositories
2. **Extract**: Archives are extracted to `/dev/shm` for faster builds
3. **Configure**: Standard `./configure` with appropriate prefix
4. **Compile**: Parallel make using available CPU cores
5. **Install**: Binaries installed to `${software_root}/${category}/${software}/${version}`
6. **Module**: Lua module file created in `${modules_dir}/${category}/${software}/`

Usage Examples
--------------

Install a specific software version (requires both software name and version tags):
```bash
# Install SAMtools 1.22.1
ansible-playbook site.yaml -t samtools,samtools1.22.1

# Install Python 3.12.8  
ansible-playbook site.yaml -t python,python3.12.8

# Install R 4.4.1
ansible-playbook site.yaml -t R,R4.4.1

# Install all versions of a software (not recommended)
ansible-playbook site.yaml -t samtools
```

Adding New Software
-------------------

1. **Create task file**: `tasks/${category}/${software}.yaml`
2. **Add to main.yml**: Include version info and task reference
3. **Create module template**: `templates/${software}.lua`
4. **Test installation**: Use explicit tag to install

Task File Structure
-------------------

```yaml
- name: Install software {{ item.version_number }}
  vars:
    version_number: "{{ item.version_number }}"
    url: "{{ item.url }}"
    checksum: "{{ item.checksum }}"
    install_dir: "{{ software_dir }}/{{ version_number }}"
  tags:
    - never
    - software{{ item.version_number }}
  block:
    # Download, build, and install tasks
```

Module Template Variables
-------------------------

Templates receive these variables:
- `version_number`: Software version
- `install_dir`: Installation directory path
- `software_dir`: Base directory for this software
- Category-specific paths from `group_vars/all`

Requirements
------------

- Directory structure from the `all` role
- Build tools (gcc, make, cmake, etc.)
- Development libraries for compilation
- `/dev/shm` available for build workspace

Dependencies
------------

- `all` role for directory structure and handlers

Notes
-----

- Some software may require manual intervention (e.g., Perl modules)
- Python packages often use Pipfiles for dependency management
- Build artifacts are typically cleaned up automatically
- Module files follow Lmod conventions

License
-------

BSD

Author Information
------------------

Role initially written by Dane Kennedy for ilifu.