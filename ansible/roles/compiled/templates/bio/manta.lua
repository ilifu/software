-- -*- lua -*-
help([[
This module configures manta {{ version_number }}
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: manta")
whatis("Description: manta {{ version_number }}")

load("{{ python_module }}")
prepend_path('PATH', '{{ install_dir }}/bin')
