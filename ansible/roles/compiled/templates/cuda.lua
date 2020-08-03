-- -*- lua -*-
help([[
This module configures cuda {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: cuda")
whatis("Description: cuda {{ version_number }}")

local cuda_dir = "{{ install_dir }}"
local bin_dir = pathJoin(cuda_dir, "bin")
local lib_dir = pathJoin(cuda_dir, "lib64")
local include_dir = pathJoin(cuda_dir, "include")
local man_dir = pathJoin(cuda_dir, "doc/man")
local pkgconfig_dir = pathJoin(cuda_dir, "pkgconfig")

local cupti_dir = pathJoin(cuda_dir, "extras/CUPTI")
local cupti_lib = pathJoin(cupti_dir, "lib64")
local cupti_include = pathJoin(cupti_dir, "include")

setenv('CUDA_PATH', cuda_dir)
prepend_path('PATH', bin_dir)
prepend_path('LD_LIBRARY_PATH', lib_dir)
prepend_path('LIBRARY_PATH', lib_dir)
prepend_path('LD_LIBRARY_PATH', cupti_lib)
prepend_path('LIBRARY_PATH', cupti_lib)

prepend_path('INCLUDE', include_dir)
prepend_path('C_INCLUDE', include_dir)
prepend_path('INCLUDE', cupti_include)
prepend_path('C_INCLUDE', cupti_include)
prepend_path('MANPATH', man_dir)
prepend_path('PKG_CONFIG_PATH', pkgconfig_dir)
