-- -*- lua -*-
help([[
This module configures Bracken {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: Bracken")
whatis("Description: Bracken {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}')
