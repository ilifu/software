-- -*- lua -*-
help([[
This module configures Graphviz {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: Graphviz")
whatis("Description: Graphviz {{ version_number }}")

local graphviz_dir = "{{ install_dir }}"
local bin_dir = pathJoin(graphviz_dir, "bin")
local lib_dir = pathJoin(graphviz_dir, "lib")
local pkg_config_dir = pathJoin(lib_dir, "pkgconfig")
local man_dir = pathJoin(graphviz_dir, "share/man")

prepend_path('PATH', bin_dir)
prepend_path('LD_LIBRARY_PATH', lib_dir)
prepend_path('LIBRARY_PATH', lib_dir)
prepend_path('MANPATH', man_dir)
prepend_path('PKG_CONFIG_PATH', pkg_config_dir)
