-- -*- lua -*-
help([[
This module configures MultiQC {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: multiqc")
whatis("Description: MultiQC {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
