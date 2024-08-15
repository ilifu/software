-- -*- lua -*-
help([[
This module configures trimmomatic {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: trimmomatic")
whatis("Description: Trimmomatic {{ version_number }}")

load("{{ java_module }}")


setenv('_JAVA_OPTIONS', '-Xmx16g')

prepend_path('PATH', '{{ install_dir }}')

