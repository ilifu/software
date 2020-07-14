-- -*- lua -*-
help([[
This module configures bcftools {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: bcftools")
whatis("Description: bcftools {{ version_number }}")

local bcftools_dir = "{{ install_dir }}"
local bin_dir = pathJoin(bcftools_dir, "bin")
local man_dir = pathJoin(bcftools_dir, "share/man")

prepend_path('PATH', bin_dir)
prepend_path('MANPATH', man_dir)
