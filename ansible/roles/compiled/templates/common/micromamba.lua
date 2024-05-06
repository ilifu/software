-- -*- lua -*-

local help_message = [[
   Get micromamba working…
]]

help(help_message,"\n")

whatis("Name: Micromamba")
whatis("Category: micromamba")
whatis("Keywords: mamba micromamba")
whatis("Description: Base MicroMamba base environment")
whatis("URL: https://mamba.readthedocs.io/en/latest/user_guide/micromamba.html")

local mamba_dir = "{{ install_dir }}"
local funcs = "__mamba_exe __mamba_hashr __mamba_xctivate micromamba __add_sys_prefix_to_path"
local the_shell = os.getenv("SHELL")

local home = os.getenv("HOME")


-- Initialize mamba
execute{cmd="source " .. mamba_dir .. "/shell_hook", modeA={"load"}}
