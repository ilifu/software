-- -*- lua -*-
help([[
This module configures PopDel {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: popdel")
whatis("Description: popdel {{ version_number }}")


load('{{ htslib_module }}')
prepend_path('PATH', '{{ install_dir }}')

