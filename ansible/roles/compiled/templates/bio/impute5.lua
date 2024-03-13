-- -*- lua -*-
help([[
This module configures impute5 {{ version_number }}
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: impute5")
whatis("Description: impute5 {{ version_number }}")-------------------------------------------

prepend_path('PATH', '{{ install_dir }}')
