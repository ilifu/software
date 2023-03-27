-- -*- lua -*-
help([[
This module configures PhyML {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: phyml")
whatis("Description: PhyML {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/bin')
