-- -*- lua -*-
help([[
This module configures zstd {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: gsl, zstd")
whatis("Description: Gnu Scientific Library {{ version_number }}")

prepend_path('PATH', "{{ install_dir }}/usr/local/bin")
prepend_path('LD_LIBRARY_PATH', "{{ install_dir }}/usr/local/lib")
prepend_path('LIBRARY_PATH', "{{ install_dir }}/usr/local/lib")
prepend_path('MANPATH', "{{ install_dir }}/usr/local/share/man")
prepend_path('PKG_CONFIG_PATH', "{{ install_dir }}/usr/local/lib/pkgconfig")
prepend_path('C_INCLUDE_PATH', "{{ install_dir }}/usr/local/include")
prepend_path('INCLUDE', "{{ install_dir }}/usr/local/include")
prepend_path('CPATH', "{{ install_dir }}/usr/local/include")
prepend_path('PKG_CONFIG_PATH', "{{ install_dir }}/usr/local/lib/pkgconfig")
