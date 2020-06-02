-- -*- lua -*-
help([[
This module configures PLINK {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: PLINK")
whatis("Description: PLINK {{ version_number }}")

local plink_dir = "{{ install_dir }}"

prepend_path('PATH', plink_dir)

