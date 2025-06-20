-- -*- lua -*-
help([[
This module configures cnvpytor {{ version_number }}
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: cnvpytor")
whatis("Description: cnvpytor {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
