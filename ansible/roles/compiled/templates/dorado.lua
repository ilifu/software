-- -*- lua -*-
help([[
This module configures dorado for use
]])
whatis("Keywords: dorado")
whatis("Description: dorado")
whatis("Version: {{ version_number }}")

prepend_path('PATH', "{{ install_dir }}/bin")
prepend_path('LD_LIBRARY_PATH', "{{ install_dir }}/lib")
