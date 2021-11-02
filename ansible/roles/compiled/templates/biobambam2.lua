-- -*- lua -*-
help([[
This module configures biobambam2 {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: julia")
whatis("Description: julia {{ version_number }}")

local julia_dir = "{{ install_dir }}"
local bin_dir = pathJoin(julia_dir, "bin")

local man_dir = pathJoin(julia_dir, "share/man")

prepend_path('PATH', bin_dir)
prepend_path('MANPATH', man_dir)
