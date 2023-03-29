-- -*- lua -*-
help([[
This module configures Minimap2 {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: minimap2")
whatis("Description: Minimap2 {{ version_number }}")

prepend_path('PATH', "{{ install_dir }}")
