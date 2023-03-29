-- -*- lua -*-
help([[
This module configures Rust {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: rust")
whatis("Description: Rust {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/bin')
prepend_path('LD_LIBRARY_PATH', '{{ install_dir }}/lib')
prepend_path('MANPATH', '{{ install_dir }}/share/man')
