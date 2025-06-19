-- -*- lua -*-
help([[
This module configures panacus {{ version_number }}
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: panacus")
whatis("Description: panacus {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
prepend_path('PATH', '{{ install_dir }}/scripts')
prepend_path('PATH', '{{ install_dir }}/bin')
