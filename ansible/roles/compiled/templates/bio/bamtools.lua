-- -*- lua -*-
help([[
This module configures bamtools {{ version_number }}
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: bamtools")
whatis("Description: bamtools {{ version_number }}")

------------------------------------------------------------------------
-- Thanks @ https://github.com/TACC/Lmod/blob/main/rt/hook/mf/Core/intel/intel.lua
------------------------------------------------------------------------

prepend_path('PATH', '{{ install_dir }}/bin')
prepend_path('LIBRARY_PATH', '{{ install_dir }}/lib')
prepend_path('LD_LIBRARY_PATH', '{{ install_dir }}/lib')
prepend_path('INCLUDE', '{{ install_dir }}/include')
prepend_path('C_INCLUDE', '{{ install_dir }}/include')
prepend_path('PKG_CONFIG_PATH', '{{ install_dir }}/lib/pkgconfig')
