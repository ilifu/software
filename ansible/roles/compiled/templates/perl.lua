-- -*- lua -*-
help([[
This module configures perl {{ version_number }} for use
]])
whatis("Keywords: perl")
whatis("Version: {{ version_number }}")
whatis("Description: Perl {{ version_number }}")

local perl_dir = "{{ install_dir }}"
local bin_dir = pathJoin(perl_dir, "bin")
local lib_dir = pathJoin(perl_dir, "lib")
local man_dir = pathJoin(perl_dir, "man")

load("htslib")

prepend_path('PATH', bin_dir)
prepend_path('LD_LIBRARY_PATH', lib_dir)
prepend_path('LIBRARY_PATH', lib_dir)
