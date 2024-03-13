-- -*- lua -*-
help([[
This module configures gemma {{ version_number }}
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: gemma")
whatis("Description: gemma {{ version_number }}")-------------------------------------------

prepend_path('PATH', '{{ install_dir }}')
