-- -*- lua -*-
help([[
This module configures fftw {{ version_number }}-{{ name }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: fftw, {{ name }}")
whatis("Description: fftw {{ version_number }} {{ name }} precision")

prepend_path('PATH', "{{ install_dir }}/bin")
prepend_path('LD_LIBRARY_PATH', "{{ install_dir }}/lib")
prepend_path('LIBRARY_PATH', "{{ install_dir }}/lib")
prepend_path('INCLUDE', "{{ install_dir }}/include")
prepend_path('C_INCLUDE', "{{ install_dir }}/include")
prepend_path('CPATH', "{{ install_dir }}/include")
prepend_path('MANPATH', "{{ install_dir }}/share/man")
prepend_path('PKG_CONFIG_PATH', "{{ install_dir }}/lib/pkgconfig")
