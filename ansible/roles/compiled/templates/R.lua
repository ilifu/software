-- -*- lua -*-
help([[
This module configures R {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: R")
whatis("Description: R {{ version_number }}")

local r_dir = "{{ install_dir }}"
local bin_dir = pathJoin(r_dir, "bin")
local lib_dir = pathJoin(r_dir, "lib")
local man_dir = pathJoin(r_dir, "share/man")

prepend_path('PATH', bin_dir)
prepend_path('LD_LIBRARY_PATH', lib_dir)
prepend_path('LIBRARY_PATH', lib_dir)
prepend_path('MANPATH', man_dir)
