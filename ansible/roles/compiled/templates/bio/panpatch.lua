-- -*- lua -*-
help([[
This module configures panpatch {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: panpatch")
whatis("Description: panpatch {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}')
