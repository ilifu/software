-- -*- lua -*-
help([[
This module configures VarFish {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: varfish")
whatis("Description: VarFish {{ version_number }}")

load("{{ java_module }}")

setenv('_JAVA_OPTIONS', '-Xmx7g')

prepend_path('PATH', '{{ install_dir }}')
