-- -*- lua -*-
help([[
This module configures Cutadapt {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: cutadapt")
whatis("Description: Cutadapt {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
