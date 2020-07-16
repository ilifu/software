-- -*- lua -*-
help([[
This module configures Java Runtime Environment {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: JRE, java")
whatis("Description: Java Runtime Environment (JRE) {{ version_number }}")

local jre_dir = "{{ install_dir }}"
local bin_dir = pathJoin(jre_dir, "bin")
local lib_dir = pathJoin(jre_dir, "lib")
local include_dir = pathJoin(jre_dir, "include")

setenv('JAVA_HOME', jre_dir)
setenv('JDK_HOME', jre_dir)

prepend_path('PATH', bin_dir)
prepend_path('LD_LIBRARY_PATH', lib_dir)
prepend_path('LIBRARY_PATH', lib_dir)
prepend_path('INCLUDE', include_dir)
prepend_path('C_INCLUDE', include_dir)
