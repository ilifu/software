-- -*- lua -*-
help([[
This module configures libgsl {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: gsl, libgsl")
whatis("Description: Gnu Scientific Library {{ version_number }}")

prepend_path('PATH', "{{ install_dir }}/bin")
prepend_path('LD_LIBRARY_PATH', "{{ install_dir }}/lib")
prepend_path('LIBRARY_PATH', "{{ install_dir }}/lib")
prepend_path('MANPATH', "{{ install_dir }}/share/man")
prepend_path('PKG_CONFIG_PATH', "{{ install_dir }}/lib/pkgconfig")
prepend_path('C_INCLUDE_PATH', "{{ install_dir }}/include")

