-- -*- lua -*-
help([[
This module configures yacrd for use
]])
whatis("Keywords: yacrd")
whatis("Description: yacrd")
whatis("Version: {{ version_number }}")

prepend_path('PATH', "{{ install_dir }}/bin")
