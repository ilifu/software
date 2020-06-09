-- -*- lua -*-
help([[
This module configures LAPACK {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: LAPACK,blas")
whatis("Description: LAPACK {{ version_number }}")

local lapack_dir = "{{ install_dir }}"
local lib_dir = pathJoin(lapack_dir, "lib")
local pkgconfig_dir = pathJoin(lapack_dir, "lib/pkgconfig")

prepend_path('LD_LIBRARY_PATH', lib_dir)
prepend_path('LIBRARY_PATH', lib_dir)
prepend_path('PKG_CONFIG_PATH', pkgconfig_dir)
