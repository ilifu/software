-- -*- lua -*-
help([[
This module configures vg {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: vg")
whatis("Description: vg {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}')

