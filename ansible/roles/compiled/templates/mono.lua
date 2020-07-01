-- -*- lua -*-
help([[
This module configures mono {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: mono")
whatis("Description: mono {{ version_number }}")

local mono_dir = "{{ install_dir }}"
local bin_dir = pathJoin(mono_dir, "bin")
local lib_dir = pathJoin(mono_dir, "lib")
local include_dir = pathJoin(mono_dir, "include")
local man_dir = pathJoin(mono_dir, "share/man")
local pkgconfig_dir = pathJoin(mpi_dir, "lib/pkgconfig")

prepend_path('PATH', bin_dir)
prepend_path('LD_LIBRARY_PATH', lib_dir)
prepend_path('LIBRARY_PATH', lib_dir)
prepend_path('INCLUDE', include_dir)
prepend_path('C_INCLUDE', include_dir)
prepend_path('MANPATH', man_dir)
prepend_path('PKG_CONFIG_PATH', pkgconfig_dir)
