-- -*- lua -*-
help([[
This module configures apptainer {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: apptainer")
whatis("Description: apptainer {{ version_number }}")

local apptainer_dir = "{{ install_dir }}"
local bin_dir = pathJoin(apptainer_dir, "bin")

prepend_path('PATH', bin_dir)