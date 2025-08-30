# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is an Ansible-based software installation repository for the ilifu computing cluster. It manages installation of scientific software packages (astronomy, bioinformatics, and common tools) through Ansible playbooks and creates environment modules for each installed package.

## Key Architecture

### Directory Structure
- `ansible/` - Main Ansible configuration and playbooks
  - `roles/compiled/` - Installs compiled software from source
  - `roles/containers/` - Installs containerized software using Singularity
  - `roles/all/` - Common tasks and handlers
  - `group_vars/all` - Global configuration variables
  - `site.yaml` - Main playbook entry point

### Software Categories
- **Astronomy** (`astro/`) - Astronomical software and tools
- **Bioinformatics** (`bio/`) - Biological analysis software
- **Common** (`common/`) - General purpose development tools

### Installation Types
1. **Compiled Software** - Built from source code with environment modules
2. **Containerized Software** - Singularity containers with wrapper scripts

## Common Commands

### Installing Software
```bash
# Install specific software by tag
ansible-playbook site.yaml -t <software_tag>

# Example: Install OpenMPI 4.0.3
ansible-playbook site.yaml -t openmpi4.0.3

# Example: Install R 4.0.0
ansible-playbook site.yaml -t R4.0.0
```

### Configuration
- Configure installation paths in `ansible/group_vars/all`
- Default software root: `/software`
- Modules directory: `/software/modules`
- Container recipes stored in respective `containers/recipes/` directories

### Software Tags
Software installation requires explicit tagging. Tags typically follow the pattern:
- `<software_name><version>` (e.g., `python3.8.3`, `cuda11.0.2_450.51.05`)
- Check individual task files in `ansible/roles/compiled/tasks/` for exact tag names

## Important Notes

- All software is **disabled by default** - must use explicit tags
- Container builds require `sudo` access
- Each software installation creates an environment module in `${software_root}/modules`
- The `admin_group` is set to `idia-admins` for permissions
- Singularity path is configured in `group_vars/all`

## Module System
Software is made available through Lmod environment modules:
- Astronomy modules: `/software/modules/astro`
- Biology modules: `/software/modules/bio`  
- Common modules: `/software/modules/common`

## Development Workflow
1. Add new software tasks to appropriate role directory
2. Create corresponding module template in `templates/`
3. Test installation with explicit tag
4. Update documentation with new software entry