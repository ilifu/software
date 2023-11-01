-- -*- lua -*-
help([[
This module configures cuDNN {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: cudnn")
whatis("Description: cudnn {{ version_number }}")

local cudnn_dir = "{{ install_dir }}"
local lib_dir = pathJoin(cudnn_dir, "lib")
local include_dir = pathJoin(cudnn_dir, "include")

prepend_path('LD_LIBRARY_PATH', lib_dir)
prepend_path('LIBRARY_PATH', lib_dir)

prepend_path('INCLUDE', include_dir)
prepend_path('C_INCLUDE', include_dir)
