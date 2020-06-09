-- -*- lua -*-
help([[
This module configures Apache Maven {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: Apache, Maven")
whatis("Description: Apache Maven {{ version_number }}")

local maven_dir = "{{ install_dir }}"
local bin_dir = pathJoin(maven_dir, "bin")

prepend_path('PATH', bin_dir)
