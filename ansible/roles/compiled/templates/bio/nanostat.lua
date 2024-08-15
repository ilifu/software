-- -*- lua -*-
help([[
This module configures nanostat {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: nanostat")
whatis("Description: nanostat {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
