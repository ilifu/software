-- -*- lua -*-
help([[
This module configures vcftools {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: vcftools")
whatis("Description: vcftools {{ version_number }}")

local vcftools_dir = "{{ install_dir }}"
local bin_dir = pathJoin(vcftools_dir, "bin")
local man_dir = pathJoin(vcftools_dir, "share/man")

prepend_path('PATH', bin_dir)
prepend_path('MANPATH', man_dir)
