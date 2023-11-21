-- -*- lua -*-
help([[
This module configures nanocomp {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: nanocomp")
whatis("Description: nanocomp {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
