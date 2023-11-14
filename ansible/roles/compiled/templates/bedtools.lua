-- -*- lua -*-
help([[
This module configures bedtools for use
]])
whatis("Keywords: bedtools")
whatis("Description: bedtools")
whatis("Version: {{ version_number }}")

prepend_path('PATH', "{{ install_dir }}")
