-- -*- lua -*-
help([[
mamba {{ version_number }}
==============
A fast, conda-compatible package and environment manager. conda is installed
alongside it, so both `mamba` and `conda` commands work.

Loading this module makes `mamba` and `conda` available. It does NOT activate an
environment: run `mamba activate <env>` yourself.

Quick start
-----------
    $ module load mamba
    $ mamba create -n myenv python=3.12 numpy pandas
    $ mamba activate myenv
    $ mamba install -n myenv scipy        # add packages later
    $ mamba deactivate

Useful commands
---------------
    mamba env list                        list your environments
    mamba search <package>                find available versions
    mamba env export -n myenv > env.yml   save an environment
    mamba env create -f env.yml           recreate it (here or elsewhere)
    mamba remove -n myenv --all           delete an environment
    mamba clean --all                     free space used by the package cache

In a Slurm batch script
-----------------------
    #!/bin/bash
    module load mamba
    mamba activate myenv
    python my_script.py

Using an environment in Jupyter
-------------------------------
    $ mamba install -n myenv ipykernel
    $ mamba activate myenv
    $ python -m ipykernel install --user --name myenv

Where things live
-----------------
    Environments    ~/.conda/envs
    Package cache   ~/.conda/pkgs   (counts toward your home quota)
    Channels        conda-forge, bioconda (strict channel priority)

The base environment is shared and read-only: create your own environment
rather than installing into base, and avoid `pip install --user`, which leaks
packages into every environment.

Documentation: https://mamba.readthedocs.io/
]])

whatis("Name: mamba")
whatis("Version: {{ version_number }}")
whatis("Category: python, package manager")
whatis("Keywords: python, conda, mamba, environments, bioconda, conda-forge")
whatis("Description: mamba {{ version_number }} with conda, for creating conda-forge/bioconda environments")
whatis("URL: https://mamba.readthedocs.io/")

-- source_sh() records the env vars and shell functions (`mamba`, `conda`) the hook
-- defines, re-emits them for the user's shell, and reverses them on unload.
-- NOTE: no `mamba activate` on load: Lmod reloads modules (e.g. on MODULEPATH
-- changes) and would silently reset a user's active environment back to base.
source_sh("bash", "{{ install_dir }}/etc/profile.d/mamba_module_hook.sh")

-- Activated environments put their own python on PATH
family("python")

if (mode() == "load") then
  LmodMessage([[
mamba {{ version_number }} loaded. No environment is active yet:
  mamba activate <env>       activate one of your environments
  mamba env list             list your environments
  mamba create -n <env> ...  create a new one
Run `module help mamba` for more.]])
end
