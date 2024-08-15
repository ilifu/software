-- -*- lua -*-
help([[
This module configures miniwdl {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: miniwdl")
whatis("Description: miniwdl {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
