-- -*- lua -*-
help([[
This module configures githubcli {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: githubcli")
whatis("Description: githubcli {{ version_number }}")

local githubcli_dir = "{{ install_dir }}"
local githubcli_bin = "{{ install_dir }}/bin"
local githubcli_man = "{{ install_dir }}/share/man"

setenv("DOTNET_ROOT", githubcli_dir)
prepend_path('PATH', githubcli_bin)
prepend_path('MANPATH', githubcli_man)
