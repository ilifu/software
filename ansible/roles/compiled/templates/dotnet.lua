-- -*- lua -*-
help([[
This module configures dotnet {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: dotnet")
whatis("Description: dotnet {{ version_number }}")

local dotnet_dir = "{{ install_dir }}"

setenv("DOTNET_ROOT", dotnet_dir)
prepend_path('PATH', dotnet_dir)
