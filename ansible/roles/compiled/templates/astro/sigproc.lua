-- -*- lua -*-
help([[
This module configures psrxml {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: sigproc")
whatis("Description: sigproc {{ version_number }}")

setenv("PSRHOME_SIGPROC_PATH", "{{ install_dir }}")

prepend_path('PATH', "{{ install_dir }}/bin")
-- prepend_path('LD_LIBRARY_PATH', "{{ install_dir }}/lib")
-- prepend_path('LIBRARY_PATH', "{{ install_dir }}/lib")
-- prepend_path('INCLUDE', "{{ install_dir }}/include")
-- prepend_path('C_INCLUDE', "{{ install_dir }}/include")
-- prepend_path('CPATH', "{{ install_dir }}/include")
-- prepend_path('PKG_CONFIG_PATH', "{{ install_dir }}/lib/pkgconfig")
