-- -*- lua -*-
help([[
This module configures Filtlong {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: filtlong")
whatis("Description: Filtlong {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}')

