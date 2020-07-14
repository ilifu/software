-- -*- lua -*-
help([[
This module configures samtools {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: samtools")
whatis("Description: samtools {{ version_number }}")

local samtools_dir = "{{ install_dir }}"
local bin_dir = pathJoin(samtools_dir, "bin")
local man_dir = pathJoin(samtools_dir, "share/man")

prepend_path('PATH', bin_dir)
prepend_path('MANPATH', man_dir)
