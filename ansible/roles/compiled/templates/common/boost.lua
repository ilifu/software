-- -*- lua -*-
help([[This module configures Boost {{ version_number }} for use

Boost provides free peer-reviewed portable C++ source libraries.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: Boost, C++, libraries")
whatis("Description: Boost {{ version_number }} - C++ source libraries")

prepend_path('LD_LIBRARY_PATH', '{{ install_dir }}/lib')
prepend_path('INCLUDE', '{{ install_dir }}/include')
prepend_path('CPATH', '{{ install_dir }}/include')

