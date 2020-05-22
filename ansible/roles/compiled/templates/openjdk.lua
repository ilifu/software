-- -*- lua -*-
help([[
This module configures OpenJDK {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: OpenJDK, java")
whatis("Description: OpenJDK {{ version_number }}")

local jdk_dir = "{{ install_dir }}"
local bin_dir = pathJoin(jdk_dir, "bin")
local lib_dir = pathJoin(jdk_dir, "lib")
local include_dir = pathJoin(jdk_dir, "include")

setenv('JAVA_HOME', '{{ install_dir }}')
setenv('JDK_HOME', '{{ install_dir }}')

prepend_path('PATH', bin_dir)
prepend_path('LD_LIBRARY_PATH', lib_dir)
prepend_path('LIBRARY_PATH', lib_dir)
prepend_path('INCLUDE', include_dir)
prepend_path('C_INCLUDE', include_dir)
