-- -*- lua -*-
help([[
This module configures OpenMPI {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: OpenMPI")
whatis("Description: OpenMPI {{ version_number }}")

{% if gpu %}
local mpi_dir = "{{ install_dir_gpu }}"
{% else %}
local mpi_dir = "{{ install_dir }}"
{% endif %}
local bin_dir = pathJoin(mpi_dir, "bin")
local lib_dir = pathJoin(mpi_dir, "lib")
local include_dir = pathJoin(mpi_dir, "include")
local man_dir = pathJoin(mpi_dir, "share/man")
local pkgconfig_dir = pathJoin(mpi_dir, "lib/pkgconfig")

{% if gpu %}
load("{{ cuda_module }}")
{% endif %}

prepend_path('PATH', bin_dir)
prepend_path('LD_LIBRARY_PATH', lib_dir)
prepend_path('LIBRARY_PATH', lib_dir)
prepend_path('INCLUDE', include_dir)
prepend_path('C_INCLUDE', include_dir)
prepend_path('MANPATH', man_dir)
prepend_path('PKG_CONFIG_PATH', pkgconfig_dir)
