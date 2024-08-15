-- -*- lua -*-
help([[
This module configures porechop {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: porechop")
whatis("Description: porechop {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
