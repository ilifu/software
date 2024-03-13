-- -*- lua -*-
help([[
This module configures Intel Compiler and Libraries ({{ major_minor }}) for use
]])
whatis("Version: {{ version }}")
whatis("Keywords: Intel, MKL, HPC")
whatis("Description: Intel oneAPI and HPC toolkits {{ major_minor }}")

------------------------------------------------------------------------
-- Thanks @ https://github.com/TACC/Lmod/blob/main/rt/hook/mf/Core/intel/intel.lua
------------------------------------------------------------------------

prepend_path('PATH', '{{ install_dir }}/{{ major_minor }}/bin')
prepend_path('LIBRARY_PATH', '{{ install_dir }}/{{ major_minor }}/lib32')
prepend_path('LIBRARY_PATH', '{{ install_dir }}/{{ major_minor }}/lib')
prepend_path('INCLUDE', '{{ install_dir }}/{{ major_minor }}/include')
prepend_path('C_INCLUDE', '{{ install_dir }}/{{ major_minor }}/include')
prepend_path('PKG_CONFIG_PATH', '{{ install_dir }}/{{ major_minor }}/lib/pkgconfig')
prepend_path('MANPATH', '{{ install_dir }}/{{ major_minor }}/share/man')
prepend_path('INFOPATH', '{{ install_dir }}/{{ major_minor }}/share/info')
