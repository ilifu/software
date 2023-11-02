-- -*- lua -*-
help([[
This module configures tensorflow {{ tensorflow_version }} with cuda {{ cuda_version }} and cuDNN {{ cudnn_version }}
]])
whatis("Version: {{ tensorflow_version }}")
whatis("Keywords: cuda, cudnn, tensorflow")
whatis("Description: tensorflor {{ tensorflow_version }}")

local cuda_dir = "{{ install_dir }}/cuda"
local cuda_bin_dir = pathJoin(cuda_dir, "bin")
local cuda_lib_dir = pathJoin(cuda_dir, "lib64")
local cuda_include_dir = pathJoin(cuda_dir, "include")
local cuda_man_dir = pathJoin(cuda_dir, "doc/man")
local cuda_pkgconfig_dir = pathJoin(cuda_dir, "pkgconfig")

local cupti_dir = pathJoin(cuda_dir, "extras/CUPTI")
local cupti_lib = pathJoin(cupti_dir, "lib64")
local cupti_include = pathJoin(cupti_dir, "include")

setenv('CUDA_PATH', cuda_dir)
setenv('CUDA_DIR', cuda_dir)
setenv('XLA_FLAGS=', '--xla_gpu_cuda_data_dir={{ install_dir }}/cuda')
prepend_path('PATH', cuda_bin_dir)
prepend_path('LD_LIBRARY_PATH', cuda_lib_dir)
prepend_path('LIBRARY_PATH', cuda_lib_dir)
prepend_path('LD_LIBRARY_PATH', cupti_lib)
prepend_path('LIBRARY_PATH', cupti_lib)

prepend_path('INCLUDE', cuda_include_dir)
prepend_path('C_INCLUDE', cuda_include_dir)
prepend_path('INCLUDE', cupti_include)
prepend_path('C_INCLUDE', cupti_include)
prepend_path('MANPATH', cuda_man_dir)
prepend_path('PKG_CONFIG_PATH', cuda_pkgconfig_dir)

prepend_path('PATH', '{{ install_dir }}/bin')
prepend_path('LD_LIBRARY_PATH', '{{ install_dir }}/lib')
