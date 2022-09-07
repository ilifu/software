-- -*- lua -*-
help([[
This module configures LIRICAL {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: lirical")
whatis("Description: LIRICAL {{ version_number }}")

load("{{ java_module }}")

local lirical_dir = "{{ install_dir }}"

setenv('_JAVA_OPTIONS', '-Xmx7g')

prepend_path('PATH', lirical_dir)