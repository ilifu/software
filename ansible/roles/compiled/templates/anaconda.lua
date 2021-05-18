-- -*- lua -*-
help([[
This module configures Anaconda3 {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: Anaconda, python")
whatis("Description: Anaconda {{ version_number }}")

local anaconda_dir = "{{ install_dir }}"
local bin_dir = pathJoin(anaconda_dir, "bin")
local lib_dir = pathJoin(anaconda_dir, "lib")
local include_dir = pathJoin(anaconda_dir, "include")
local man_dir = pathJoin(anaconda_dir, "share/man")
local pkgconfig_dir = pathJoin(anaconda_dir, "lib/pkgconfig")

prepend_path('PATH', bin_dir)
prepend_path('LD_LIBRARY_PATH', lib_dir)
prepend_path('LIBRARY_PATH', lib_dir)
prepend_path('INCLUDE', include_dir)
prepend_path('C_INCLUDE', include_dir)
prepend_path('MANPATH', man_dir)
prepend_path('PKG_CONFIG_PATH', pkgconfig_dir)
setenv('CONDARC', pathJoin(anaconda_dir, "condarc"))
prepend_path('CONDA_ENVS_PATH', pathJoin(anaconda_dir, "envs"))
prepend_path('CONDA_ENVS_PATH', "~/.conda/envs")
