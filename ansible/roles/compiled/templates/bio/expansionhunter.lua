-- -*- lua -*-
help([[
This module configures ExpansionHunter {{ version_number }}
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: ExpansionHunter")
whatis("Description: ExpansionHunter {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/bin')
