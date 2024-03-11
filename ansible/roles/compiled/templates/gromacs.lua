-- -*- lua -*-
help([[
This module configures gromacs {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: gromacs, cuda, openmpi")
whatis("Description: gromacs {{ version_number }} with cuda and openmpi")

local gromacs_dir = "{{ install_dir }}"
local bin_dir = pathJoin(gromacs_dir, "bin")
local lib_dir = pathJoin(gromacs_dir, "lib")
local include_dir = pathJoin(gromacs_dir, "include")
local man_dir = pathJoin(gromacs_dir, "share/man")
local pkgconfig_dir = pathJoin(gromacs_dir, "lib/pkgconfig")

load("{{ hwloc_module }}")
load("{{ cuda_module }}")
load("{{ mpi_module }}")

prepend_path('PATH', bin_dir)
prepend_path('LD_LIBRARY_PATH', lib_dir)
prepend_path('LIBRARY_PATH', lib_dir)
prepend_path('INCLUDE', include_dir)
prepend_path('C_INCLUDE', include_dir)
prepend_path('MANPATH', man_dir)
prepend_path('PKG_CONFIG_PATH', pkgconfig_dir)

setenv("GMXBIN","{{ install_dir }}/bin")
setenv("GMXDATA","{{ install_dir }}/share/gromacs")
setenv("GMXLDLIB","{{ install_dir }}/lib")
setenv("GMXMAN","{{ install_dir }}/share/man")
setenv("GROMACS_DIR","{{ install_dir }}")

