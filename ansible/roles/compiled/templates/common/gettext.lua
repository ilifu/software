-- -*- lua -*-
help([[
This module configures gettext {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: gettext")
whatis("Description: gettext {{ version_number }}")

local gettext_dir = "{{ install_dir }}"
local bin_dir = pathJoin(gettext_dir, "bin")
local lib_dir = pathJoin(gettext_dir, "lib")
local include_dir = pathJoin(gettext_dir, "include")
local man_dir = pathJoin(gettext_dir, "share/man")

prepend_path('PATH', bin_dir)
prepend_path('LD_LIBRARY_PATH', lib_dir)
prepend_path('LIBRARY_PATH', lib_dir)
prepend_path('INCLUDE', include_dir)
prepend_path('C_INCLUDE', include_dir)
prepend_path('MANPATH', man_dir)
