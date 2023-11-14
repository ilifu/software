-- -*- lua -*-
help([[
This module configures meryl for use
]])
whatis("Keywords: meryl")
whatis("Description: meryl")
whatis("Version: {{ version_number }}")

prepend_path('PATH', "{{ install_dir }}/bin")
prepend_path('LD_LIBRARY_PATH', "{{ install_dir }}/lib")

