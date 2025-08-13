All Role
========

This foundational role creates and maintains the directory structure required for software installations on the ilifu HPC cluster.

Overview
--------

The `all` role is the base dependency for both `compiled` and `containers` roles. It ensures all necessary directories exist with proper permissions before any software installation begins. This role runs on every playbook execution.

Purpose
-------

- Creates the complete directory hierarchy for software installations
- Sets appropriate permissions for admin group access
- Provides common handlers for other roles
- Ensures consistent structure across all installation types

Directory Structure Created
----------------------------

```
/software/                    # Root directory (configurable)
├── astro/                    # Astronomy software
│   ├── src/                  # Source code archives
│   └── containers/           # Container images
│       └── recipes/          # Singularity definitions
├── bio/                      # Bioinformatics software
│   ├── src/                  # Source code archives
│   └── containers/           # Container images
│       └── recipes/          # Singularity definitions
├── common/                   # General-purpose software
│   ├── src/                  # Source code archives
│   └── containers/           # Container images
│       └── recipes/          # Singularity definitions
├── data/                     # Shared data directory
│   ├── astro/                # Astronomy data
│   └── bio/                  # Bioinformatics data
└── modules/                  # Lmod environment modules
    ├── astro/                # Astronomy modules
    ├── bio/                  # Bioinformatics modules
    └── common/               # Common modules
```

Tasks Performed
---------------

The role executes these tasks automatically:

1. **Directory Creation**: Creates all required directories
2. **Permission Setting**: Sets group ownership to `admin_group`
3. **Mode Configuration**: Ensures directories are accessible (755)
4. **Validation**: Checks that base directories are writable

Role Variables
--------------

Key variables from `group_vars/all`:

```yaml
software_root: /software           # Base installation directory
data_root: /software/data          # Shared data directory
admin_group: idia-admins           # Group with write permissions

# Category-specific directories
astro_dir: "{{ software_root }}/astro"
bio_dir: "{{ software_root }}/bio"
common_dir: "{{ software_root }}/common"

# Module directories
modules_dir: "{{ software_root }}/modules"
astro_modules: "{{ modules_dir }}/astro"
bio_modules: "{{ modules_dir }}/bio"
common_modules: "{{ modules_dir }}/common"
```

Requirements
------------

- The base directory (`/software` by default) must exist
- User running the role needs write permissions to the base directory
- Admin group must exist on the system

Usage
-----

This role is automatically included in the main playbook:

```yaml
- name: Import all playbook
  hosts: all
  become: false
  roles:
    - all
```

It runs before any software installation to ensure the environment is ready.

Integration with Other Roles
----------------------------

- **compiled role**: Uses directories for source code and installations
- **containers role**: Uses directories for images and recipes
- Both roles depend on the module directories created here

Handlers
--------

The role provides common handlers that can be used by other roles for:
- Service restarts
- Cache updates
- Module cache refreshes

Files Created
-------------

- No files are created, only directory structures
- All directories are created with mode 755
- Group ownership is set to `admin_group`

Idempotency
-----------

The role is fully idempotent:
- Existing directories are not modified if they already exist
- Permissions are only changed if they differ from desired state
- Safe to run multiple times

Dependencies
------------

No external dependencies. This is the base role that others depend on.

Notes
-----

- Always runs regardless of tags (no `never` tag)
- Creates directories even if no software will be installed
- Does not remove directories if they become empty
- Preserves existing directory contents

License
-------

BSD

Author Information
------------------

Role initially written by Dane Kennedy for ilifu.