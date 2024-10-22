-- -*- lua -*-
help([[
This module configures impg {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: impg")
whatis("Description: impg {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/bin')

