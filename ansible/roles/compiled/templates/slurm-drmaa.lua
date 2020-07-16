-- -*- lua -*-
help([[
This module configures DRMAA for Slurm {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: DRMAA,Slurm")
whatis("Description: slurm-drmaa {{ version_number }}")

local drmaa_dir = "{{ install_dir }}"
local lib_dir = pathJoin(drmaa_dir, "lib")
local include_dir = pathJoin(drmaa_dir, "include")
local bin_dir = pathJoin(drmaa_dir, "bin")

prepend_path('PATH', bin_dir)
prepend_path('LD_LIBRARY_PATH', lib_dir)
prepend_path('LIBRARY_PATH', lib_dir)
prepend_path('INCLUDE', include_dir)
prepend_path('C_INCLUDE', include_dir)
