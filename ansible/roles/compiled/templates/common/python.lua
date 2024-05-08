-- -*- lua -*-
help([[
This module configures Python {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: Python")
whatis("Description: Python {{ version_number }}")

local python_dir = "{{ install_dir }}"
local bin_dir = pathJoin(python_dir, "bin")
local lib_dir = pathJoin(python_dir, "lib")
local include_dir = pathJoin(python_dir, "include")
local man_dir = pathJoin(python_dir, "share/man")
local pkgconfig_dir = pathJoin(python_dir, "lib/pkgconfig")

prepend_path('PATH', bin_dir)
prepend_path('LD_LIBRARY_PATH', lib_dir)
prepend_path('INCLUDE', include_dir)
prepend_path('MANPATH', man_dir)
prepend_path('PKG_CONFIG_PATH', pkgconfig_dir)
