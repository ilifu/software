-- -*- lua -*-
help([[
This module configures OpenBLAS {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: OpenBLAS")
whatis("Description: OpenBLAS {{ version_number }}")

local blas_dir = "{{ install_dir }}"
-- local bin_dir = pathJoin(mpi_dir, "bin")
local lib_dir = pathJoin(blas_dir, "lib")
local include_dir = pathJoin(blas_dir, "include")
--  local man_dir = pathJoin(mpi_dir, "share/man")
local pkgconfig_dir = pathJoin(blas_dir, "lib/pkgconfig")

-- prepend_path('PATH', bin_dir)
prepend_path('LD_LIBRARY_PATH', lib_dir)
prepend_path('LIBRARY_PATH', lib_dir)
prepend_path('INCLUDE', include_dir)
prepend_path('C_INCLUDE', include_dir)
-- prepend_path('MANPATH', man_dir)
prepend_path('PKG_CONFIG_PATH', pkgconfig_dir)
