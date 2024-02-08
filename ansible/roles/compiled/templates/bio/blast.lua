-- -*- lua -*-
help([[
This module configures blast+ {{ version_number }}
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: blast")
whatis("Description: blast+ {{ version_number }}")-------------------------------------------

prepend_path('PATH', '{{ install_dir }}/bin')
