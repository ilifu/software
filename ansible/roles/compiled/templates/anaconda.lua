-- -*- lua -*-

-- Thank you Greg Zynda! http://gregoryzynda.com/python/lmod/module/conda/tensorflow/2020/04/30/conda-modules.html

local help_message = [[
The base Anaconda python environment.

You can modify this environment as follows:

  - Extend this environment locally

      $ pip install --user [package]

https://docs.conda.io/projects/conda/en/latest/user-guide/getting-started.html
]]

help(help_message,"\n")

whatis("Name: conda")
whatis("Version: ${VER}")
whatis("Category: python conda")
whatis("Keywords: python conda")
whatis("Description: Base Anaconda python environment")
whatis("URL: https://docs.conda.io/projects/conda/en/latest/user-guide/getting-started.html")

local conda_dir = "{{ install_dir }}"
local funcs = "conda __conda_activate __conda_hashr __conda_reactivate __add_sys_prefix_to_path"
local the_shell = os.getenv("SHELL")


local user = os.getenv("USER")
local conda_envs = pathJoin(user, ".conda/envs")
local conda_pkgs = pathJoin(user, ".conda/pkgs")
setenv('CONDA_ENVS_PATH', conda_envs)
setenv('CONDA_PKGS_DIRS', conda_pkgs)


-- Initialize conda
execute{cmd="source " .. conda_dir .. "/etc/profile.d/conda.sh; conda activate", modeA={"load"}}

execute{cmd="source " .. conda_dir .. "/etc/profile.d/conda.sh; deactivate", modeA={"unload"}}


-- Prevent from being loaded with another system python or conda environment
family("python")
