-- -*- lua -*-
help([[
This module configures hwloc {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: hwloc")
whatis("Description: hwloc {{ version_number }}")

local hwloc_dir = "{{ install_dir }}"
local bin_dir = pathJoin(hwloc_dir, "bin")
local lib_dir = pathJoin(hwloc_dir, "lib")
local include_dir = pathJoin(hwloc_dir, "include")
local man_dir = pathJoin(hwloc_dir, "share/man")
local pkgconfig_dir = pathJoin(hwloc_dir, "lib/pkgconfig")

prepend_path('PATH', bin_dir)
prepend_path('LD_LIBRARY_PATH', lib_dir)
prepend_path('LIBRARY_PATH', lib_dir)
prepend_path('INCLUDE', include_dir)
prepend_path('C_INCLUDE', include_dir)
prepend_path('MANPATH', man_dir)
prepend_path('PKG_CONFIG_PATH', pkgconfig_dir)
