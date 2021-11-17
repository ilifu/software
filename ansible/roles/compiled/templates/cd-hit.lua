-- -*- lua -*-
help([[
This module configures cd-hit {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: cd-hit")
whatis("Description: cd-hit {{ version_number }}")

prepend_path('PATH', "{{ install_dir }}")
