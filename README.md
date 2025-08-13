# software
This is a repository for scripts and recipes to install software on ilifu. The list of software managed here can be seen [below](#available-software)

## Ansible installs
These installations can be found in the `ansible` directory.

### Configuring
Configure the locations for software in the file: `ansible/group_vars/all`. The structure of the file looks something like:
```yaml
---

software_root: /software
data_root: /software/data

astro_dir: "{{ software_root }}/astro"
astro_container_dir: "{{ astro_dir }}/containers"
astro_container_recipe_dir: "{{ astro_container_dir }}/recipes"
astro_src: "{{ astro_dir }}/src"
astro_data_dir: "{{ data_root }}/astro"

bio_dir: "{{ software_root }}/bio"
bio_container_dir: "{{ bio_dir }}/containers"
bio_container_recipe_dir: "{{ bio_container_dir }}/recipes"
bio_src: "{{ bio_dir }}/src"
bio_data_dir: "{{ data_root }}/bio"

common_dir: "{{ software_root }}/common"
common_container_dir: "{{ common_dir }}/containers"
common_container_recipe_dir: "{{ common_container_dir }}/recipes"
common_src: "{{ common_dir }}/src"

modules_dir: "{{ software_root }}/modules"
astro_modules: "{{ modules_dir }}/astro"
bio_modules: "{{ modules_dir }}/bio"
common_modules: "{{ modules_dir }}/common"

admin_group: "idia-admins"

singularity: "/software/common/singularity/4.1.0/bin/singularity"
```

where `software_root` is probably the most important variable to configure — this is the root directory where all software will be installed. Please also remember to configure the location of your singularity install in the `singularity` variable.

### Installing software
This is a reasonably typical ansible installation. Note that EVERYTHING is disabled by default apart from configuring the directories, which is ALWAYS run. There are typically two classes of software that can be installed: compiled software; and containers. While installation is similar for both, installing containers does require root access (via `sudo`) if the container is built from a recipe.

So to install, say openmpi 4.0.3, one would run the command: ```ansible-playbook site.yaml -t openmpi,openmpi4.0.3```. Note that both the software name tag and the version-specific tag (comma-separated, e.g., `openmpi,openmpi4.0.3`) are required due to the loop structure. Software to be installed needs to be explicitly tagged, otherwise it will be ignored. Installation of the specific software will also install the appropriate environment module (lmod) in `${software_root}/modules`.

Note that your user will need `sudo` rights in order to build containers.

#### Available software

The repository contains over 200 software packages across three categories. All software requires explicit tagging and is disabled by default. Installation requires both the software name tag and the version-specific tag (e.g., `python,python3.12.8` or `samtools,samtools1.22.1`).

##### Common Software (Sample)
| Software     | Available Versions | ansible tag (example) | module name |
|--------------|--------------------|----------------------|-------------|
| Python       | 2.7.18, 3.6-3.13.2 | python,python3.12.8         | python/3.12.8 |
| R            | 4.0.0-4.4.1        | R,R4.4.1               | R/4.4.1 |
| OpenMPI      | 2.1.1-5.0.3        | openmpi,openmpi5.0.3         | openmpi/5.0.3 |
| CUDA         | 10.0-12.4.0        | cuda,cuda12.4.0_550.54.14 | cuda/12.4.0_550.54.14 |
| Singularity  | 2.6.1-4.1.3        | singularity,singularity4.1.3     | singularity/4.1.3 |
| Go           | 1.16.3-1.22.4      | golang,golang1.22.4         | golang/1.22.4 |
| Julia        | 1.5.3, 1.10.4      | julia,julia1.10.4          | julia/1.10.4 |
| .NET         | 2.1-8.0            | dotnet,dotnet8.0.301        | dotnet/8.0.301 |
| Anaconda     | 2020.07-2024.10    | anaconda,anaconda2024.10      | anaconda/2024.10 |

##### Bioinformatics Software (Sample)
| Software     | Available Versions | ansible tag (example) | module name |
|--------------|--------------------|----------------------|-------------|
| SAMtools     | 1.10-1.22.1        | samtools,samtools1.22.1       | samtools/1.22.1 |
| BCFtools     | 1.10.2-1.22        | bcftools,bcftools1.22         | bcftools/1.22 |
| GATK         | 4.2.5.0-4.5.0.0    | gatk,gatk4.5.0.0          | gatk/4.5.0.0 |
| BWA          | latest             | bwa,bwa                  | bwa/latest |
| BLAST+       | 2.15.0, 2.16.0     | blast,blast2.16.0          | blast/2.16.0 |
| FastQC       | 0.11.9, 0.12.1     | fastqc,fastqc0.12.1         | fastqc/0.12.1 |
| MultiQC      | 1.13-1.22.3        | multiqc,multiqc1.22.3        | multiqc/1.22.3 |
| STAR         | 2.7.11b            | star,star2.7.11b          | star/2.7.11b |
| VEP          | 101.0, 106.1       | vep,vep106.1             | vep/106.1 |
| Minimap2     | 2.24               | minimap2,minimap22.24         | minimap2/2.24 |

##### Containerised Software (Sample)
| Software     | Version/Type       | ansible tag          |
|--------------|-------------------|---------------------|
| RStudio      | Various R versions | RStudio,RStudio2025.05.1-513-R4.5.1 |
| Spectronaut  | 20.0              | spectronaut,spectronaut20.0     |
| DIA-NN       | 1.8.1             | diann,diann1.8.1          |
| Beast        | 1.10.4            | beast,beast1.10.4         |
| ClinSV       | 1.0.0             | ClinSV,ClinSV1.0.0         |
| PopGen Suite | 0.1               | popgen,popgen0.1           |

##### Astronomy Software
| Software     | Available Versions | ansible tag (example) | module name |
|--------------|--------------------|----------------------|-------------|
| cfitsio      | 3.450, 4.3.1       | cfitsio,cfitsio4.3.1         | cfitsio/4.3.1 |
| calceph      | 2.3.2              | calceph,calceph2.3.2         | calceph/2.3.2 |

For a complete list of available software and versions, check the task files in `ansible/roles/*/tasks/`.