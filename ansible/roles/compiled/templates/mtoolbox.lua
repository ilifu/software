-- -*- lua -*-
help([[
This module configures mtoolbox {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: mtoolbox")
whatis("Description: mtoolbox{{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/MToolBox;{{ install_dir }}/bin')
