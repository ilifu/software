-- -*- lua -*-
help([[
This module configures seqkit for use
]])
whatis("Keywords: seqkit")
whatis("Description: seqkit")
whatis("Version: {{ version_number }}")

prepend_path('PATH', "{{ install_dir }}")

