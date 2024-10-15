-- -*- lua -*-
help([[
This module configures beast2 {{ version_number }}
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: beast2")
whatis("Description: beast2 {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/bin')
