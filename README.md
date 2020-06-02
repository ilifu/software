# software
This is a repository for scripts and recipes to install software on ilifu. The list of software managed here includes:
* OpenMPI
* python

## Ansible installs
These installations can be found in the `ansible` directory.

### Configuring
Configure the locations for software in the file: `ansible/group_vars/all`. The structure of the file looks something like:
```yaml
---

software_root: /software

astro_dir: "{{ software_root }}/astro"
astro_container_dir: "{{ astro_dir }}/containers"
astro_container_recipe_dir: "{{ astro_container_dir }}/recipes"
astro_src: "{{ astro_dir }}/src"

bio_dir: "{{ software_root }}/bio"
bio_container_dir: "{{ bio_dir }}/containers"
bio_container_recipe_dir: "{{ bio_container_dir }}/recipes"
bio_src: "{{ bio_dir }}/src"

common_dir: "{{ software_root }}/common"
common_container_dir: "{{ common_dir }}/containers"
common_container_recipe_dir: "{{ common_container_dir }}/recipes"
common_src: "{{ common_dir }}/src"

modules_dir: "{{ software_root }}/modules"
astro_modules: "{{ modules_dir }}/astro"
bio_modules: "{{ modules_dir }}/bio"
common_modules: "{{ modules_dir }}/common"

admin_group: "idia-admins"

singularity: "/opt/singularity/bin/singularity"
```

where `software_root` is probably the most important variable to configure — this is the root directory where all software will be installed. Please also remember to configure the location of your singularity install in the `singularity` variable.

### Installing software
This is a reasonably typical ansible installation. Note that EVERYTHING is disabled by default apart from configuring the directories, which is ALWAYS run. There are typically two classes of software that can be installed: compiled software; and containers. While installation is similar for both, installing containers does require root access (via `sudo`) if the container is built from a recipe.

So to install, say openmpi 4.0.3, one would run the command: ```ansible-playbook site.yaml -t openmpi4.0.3```. Software to be installed needs to be explicitly tagged, otherwise it will be ignored. Note that installation of the specific software should also install the appropriate environment module (lmod) in `${software_root}/modules`.

Note that your user will need `sudo` rights in order to build containers.

#### Available software
##### Compiled Software
| Software     | Version     | ansible tag       |
|--------------|------------:|-------------------|
| OpenJDK      | 14.0.1      | openjdk14.0.1     |
| OpenMPI      | 4.0.3       | openmpi3.1.6      |
| OpenMPI      | 4.0.3       | openmpi4.0.3      |
| PLINK        | 2.00a2.3    | plink2.00a2.3     |
| PRSice       | 2.3.1d      | prsice2.3.1d      |
| Python       | 3.8.2       | python2.7.18      |
| Python       | 3.8.2       | python3.8.2       |
| Python       | 3.8.3       | python3.8.3       |
| R            | 4.0.0       | R4.0.0            |

##### Containerised Software
| Software     | Version         | ansible tag            |
|--------------|----------------:|------------------------|
| RStudio/R    | 1.2.5042/4.0.0  | RStudio1.2.5042-R4.0.0 |