-- -*- lua -*-
help([[
This module configures Julia {{ full_version_number }} for use
]])
whatis("Version: {{ full_version_number }}")
whatis("Keywords: julia")
whatis("Description: julia {{ full_version_number }}")

local julia_dir = "{{ install_dir }}"
local bin_dir = pathJoin(julia_dir, "bin")
local lib_dir = pathJoin(julia_dir, "lib")
local include_dir = pathJoin(julia_dir, "include")
local man_dir = pathJoin(julia_dir, "share/man")

prepend_path('PATH', bin_dir)
prepend_path('LD_LIBRARY_PATH', lib_dir)
prepend_path('LIBRARY_PATH', lib_dir)
prepend_path('INCLUDE', include_dir)
prepend_path('C_INCLUDE', include_dir)
prepend_path('MANPATH', man_dir)
