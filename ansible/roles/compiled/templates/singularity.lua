-- -*- lua -*-
help([[
This module configures singularity {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: singularity")
whatis("Description: singularity {{ version_number }}")

local singularity_dir = "{{ install_dir }}"
local bin_dir = pathJoin(singularity_dir, "bin")

prepend_path('PATH', bin_dir)
