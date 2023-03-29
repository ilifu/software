-- -*- lua -*-
help([[
This module configures HyPhy {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: hyphy")
whatis("Description: HyPhy {{ version_number }}")

load("{{ mpi_module }}")
prepend_path('PATH', '{{ install_dir }}/bin')

