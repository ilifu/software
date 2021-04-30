-- -*- lua -*-
help([[
This module configures Go {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: go,golang")
whatis("Description: go {{ version_number }}")

local go_dir = "{{ install_dir }}"
local bin_dir = pathJoin(go_dir, "bin")

prepend_path('PATH', bin_dir)
