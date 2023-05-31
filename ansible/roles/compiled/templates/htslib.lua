-- -*- lua -*-
help([[
This module configures htslib {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: htslib")
whatis("Description: htslib {{ version_number }}")

local htslib_dir = "{{ install_dir }}"
local lib_dir = pathJoin(htslib_dir, "lib")
local include_dir = pathJoin(htslib_dir, "include")
local pkgconfig_dir = pathJoin(lib_dir, "pkgconfig")
local bin_dir = pathJoin(htslib_dir, "bin")
local man_dir = pathJoin(htslib_dir, "share/man")

prepend_path('PATH', bin_dir)
prepend_path('LD_LIBRARY_PATH', lib_dir)
prepend_path('LIBRARY_PATH', lib_dir)
prepend_path('INCLUDE', include_dir)
prepend_path('C_INCLUDE_PATH', include_dir)
prepend_path('PKG_CONFIG_PATH', pkgconfig_dir)
prepend_path('MANPATH', man_dir)
