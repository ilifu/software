-- -*- lua -*-

-- Thank you Greg Zynda! http://gregoryzynda.com/python/lmod/module/mamba/tensorflow/2020/04/30/mamba-modules.html

local help_message = [[
The base Mamba python environment.

You can modify this environment as follows:

  - Extend this environment locally

      $ pip install --user [package]

https://docs.mamba.io/projects/mamba/en/latest/user-guide/getting-started.html
]]

help(help_message,"\n")

whatis("Name: mamba")
whatis("Version: ${VER}")
whatis("Category: python mamba")
whatis("Keywords: python mamba")
whatis("Description: Base Mamba python environment")
whatis("URL: https://docs.mamba.io/projects/mamba/en/latest/user-guide/getting-started.html")

local mamba_dir = "{{ install_dir }}"
local funcs = "mamba __mamba_activate __mamba_hashr __mamba_reactivate __add_sys_prefix_to_path"
local the_shell = os.getenv("SHELL")


local home = os.getenv("HOME")
local mamba_envs = pathJoin(home, ".mamba/envs")
local mamba_pkgs = pathJoin(home, ".mamba/pkgs")
setenv('CONDA_ENVS_PATH', mamba_envs)
setenv('CONDA_PKGS_DIRS', mamba_pkgs)


-- Initialize mamba
execute{cmd="source " .. mamba_dir .. "/etc/profile.d/conda.sh; conda activate", modeA={"load"}}
execute{cmd="source " .. mamba_dir .. "/etc/profile.d/conda.sh", modeA={"load"}}

execute{cmd="source " .. mamba_dir .. "/etc/profile.d/conda.sh; deactivate", modeA={"unload"}}


-- Prevent from being loaded with another system python or mamba environment
family("python")
