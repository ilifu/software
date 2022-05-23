-- -*- lua -*-
help([[
This module configures Pandoc {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: pandoc")
whatis("Description: pandoc {{ version_number }}")

local pandoc_dir = "{{ install_dir }}"
local bin_dir = pathJoin(pandoc_dir, "bin")
local man_dir = pathJoin(pandoc_dir, "share/man")

prepend_path('PATH', bin_dir)
prepend_path('MANPATH', man_dir)
