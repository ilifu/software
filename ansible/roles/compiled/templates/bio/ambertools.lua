-- -*- lua -*-
help([[
This module configures Ambertools {{ version_number }}
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: ambertools")
whatis("Description: Ambertools {{ version_number }}")-------------------------------------------

load("{{ hwloc_module }}")
load("{{ cuda_module }}")
load("{{ mpi_module }}")

setenv('AMBERHOME', '{{ install_dir }}')
setenv('QUICK_BASIS', '{{ install_dir }}/AmberTools/src/quick/basis')

prepend_path('PATH', '{{ install_dir }}/bin')
prepend_path('LD_LIBRARY_PATH', '{{ install_dir }}/lib')
prepend_path('PERL5LIB', '{{ install_dir }}/lib/perl')
prepend_path('PYTHONPATH', '{{ install_dir }}/lib/python3.12/site-packages')
