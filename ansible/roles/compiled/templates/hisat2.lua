-- -*- lua -*-
help([[
This module configures HISAT2 {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: HISAT2")
whatis("Description: HISAT2 {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}')
