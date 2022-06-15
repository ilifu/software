-- -*- lua -*-
help([[
This module configures stacks {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: stacks")
whatis("Description: stacks {{ version_number }}")

local stacks_dir = "{{ install_dir }}"
local bin_dir = pathJoin(stacks_dir, "bin")

prepend_path('PATH', bin_dir)
