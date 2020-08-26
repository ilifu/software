-- -*- lua -*-
help([[
This module configures ruby {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: ruby")
whatis("Description: ruby {{ version_number }}")

local ruby_dir = "{{ install_dir }}"
local bin_dir = pathJoin(ruby_dir, "bin")
local lib_dir = pathJoin(ruby_dir, "lib")
local include_dir = pathJoin(ruby_dir, "include")
local man_dir = pathJoin(ruby_dir, "share/man")
local pkgconfig_dir = pathJoin(lib_dir, "pkgconfig")

prepend_path('PATH', bin_dir)
prepend_path('LD_LIBRARY_PATH', lib_dir)
prepend_path('LIBRARY_PATH', lib_dir)
prepend_path('INCLUDE', include_dir)
prepend_path('C_INCLUDE', include_dir)
prepend_path('MANPATH', man_dir)
prepend_path('PKG_CONFIG_PATH', pkgconfig_dir)
