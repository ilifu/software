-- -*- lua -*-
help([[
This module configures Boost {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: Boost")
whatis("Description: Boost {{ version_number }}")

prepend_path('LD_LIBRARY_PATH', '{{ install_dir }}/lib')
prepend_path('INCLUDE', '{{ install_dir }}/include')

