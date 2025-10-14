-- -*- lua -*-
help([[
This module configures squashfuse {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: squashfuse")
whatis("Description: This module file sets up the environment for using squashfuse, a user-space filesystem for mounting SquashFS archives. It configures paths for binaries, libraries, headers, and documentation, making squashfuse accessible for development and runtime use.")

prepend_path('PATH', '{{ install_dir }}/bin')
prepend_path('LIBRARY_PATH', '{{ install_dir }}/lib')
prepend_path('LD_LIBRARY_PATH', '{{ install_dir }}/lib')
prepend_path('INCLUDE', '{{ install_dir }}/include')
prepend_path('C_INCLUDE', '{{ install_dir }}/include')
prepend_path('PKG_CONFIG_PATH', '{{ install_dir }}/lib/pkgconfig')
prepend_path('MANPATH', '{{ install_dir }}/share/man')
