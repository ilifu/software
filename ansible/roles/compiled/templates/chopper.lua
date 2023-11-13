-- -*- lua -*-
help([[
This module configures chopper for use
]])
whatis("Keywords: chopper")
whatis("Description: chopper")
whatis("Version: {{ version_number }}")

prepend_path('PATH', "{{ install_dir }}/bin")
