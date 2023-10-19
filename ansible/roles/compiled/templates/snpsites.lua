-- -*- lua -*-
help([[
This module configures snp-sites {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: snp-sites")
whatis("Description: snp-sites {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/bin')
prepend_path('LD_LIBRARY_PATH', '{{ install_dir }}/lib')
prepend_path('INCLUDE', '{{ install_dir }}/include')
