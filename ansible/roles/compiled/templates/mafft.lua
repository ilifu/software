-- -*- lua -*-
help([[
This module configures mafft {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: mafft ")
whatis("Description: mafft {{ version_number }}: multiple sequence alignment")

local mafft_dir = "{{ install_dir }}"
local bin_dir = pathJoin(mafft_dir, "bin")
local man_dir = pathJoin(mafft_dir, "share/man")

prepend_path('PATH', bin_dir)
prepend_path('MANPATH', man_dir)
