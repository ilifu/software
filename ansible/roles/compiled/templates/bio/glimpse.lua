-- -*- lua -*-
help([[
This module configures GLIMPSE {{ version_number }}
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: GLIMPSE")
whatis("Description: GLIMPSE {{ version_number }}")-------------------------------------------

prepend_path('PATH', '{{ install_dir }}')
