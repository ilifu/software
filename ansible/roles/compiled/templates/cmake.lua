-- -*- lua -*-
help([[
This module configures cmake {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: cmake")
whatis("Description: cmake {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/bin')
prepend_path('MANPATH', '{{ install_dir }}/man')
