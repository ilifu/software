-- -*- lua -*-
help([[
This module configures Intel Compiler and Libraries ({{ version }}) for use
]])
whatis("Version: {{ version }}")
whatis("Keywords: Intel, MKL")
whatis("Description: Intel oneAPI version {{ version }}")

------------------------------------------------------------------------
-- Thanks @ https://github.com/TACC/Lmod/blob/main/rt/hook/mf/Core/intel/intel.lua
------------------------------------------------------------------------

------------------------------------------------------------------------
-- Intel Compilers support
------------------------------------------------------------------------
prepend_path('PATH', '{{ install_dir }}/compiler/latest/bin')


------------------------------------------------------------------------
-- Intel Compilers support
------------------------------------------------------------------------