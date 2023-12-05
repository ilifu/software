-- -*- lua -*-
help([[
This module configures calceph {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: calceph")
whatis("Description: calceph {{ version_number }}")

setenv("PSRHOME_CALCEPH_PATH", "{{ install_dir }}")

prepend_path('PATH', "{{ install_dir }}/bin")
prepend_path('LD_LIBRARY_PATH', "{{ install_dir }}/lib")
prepend_path('LIBRARY_PATH', "{{ install_dir }}/lib")
prepend_path('INCLUDE', "{{ install_dir }}/include")
prepend_path('C_INCLUDE', "{{ install_dir }}/include")
prepend_path('CPATH', "{{ install_dir }}/include")
