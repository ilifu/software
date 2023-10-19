-- -*- lua -*-
help([[
This module configures mummer {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: mummer")
whatis("Description: mummer {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/bin')
prepend_path('LD_LIBRARY_PATH', '{{ install_dir }}/lib')
prepend_path('INCLUDE', '{{ install_dir }}/include')
prepend_path('PKG_CONFIG_PATH', '{{ install_dir }}/lib/pkgconfig')
