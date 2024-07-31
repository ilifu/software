-- -*- lua -*-
help([[
This module configures STAR {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: STAR")
whatis("Description: STAR {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}')

