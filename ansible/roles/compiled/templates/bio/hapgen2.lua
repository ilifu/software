-- -*- lua -*-
help([[
This module configures HAPGEN2 {{ version_number }}
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: HAPGEN2")
whatis("Description: HAPGEN2 {{ version_number }}")-------------------------------------------

prepend_path('PATH', '{{ install_dir }}')
