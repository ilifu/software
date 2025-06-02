-- -*- lua -*-
help([[
This module configures Hifiasm {{ version_number }}
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: hifiasm")
whatis("Description: Hifiasm {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}')
