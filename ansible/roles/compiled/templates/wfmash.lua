-- -*- lua -*-
help([[
This module configures wfmash {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: wfmash")
whatis("Description: wfmash {{ version_number }}")

load("{{ htslib_module }}")
load("{{ jemalloc_module }}")
load("{{ libgsl_module }}")

prepend_path('PATH', "{{ install_dir }}/bin")
prepend_path('LD_LIBRARY_PATH', "{{ install_dir }}/lib")
prepend_path('LIBRARY_PATH', "{{ install_dir }}/lib")
