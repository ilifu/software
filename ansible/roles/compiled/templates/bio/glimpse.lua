-- -*- lua -*-
help([[
This module configures glimpse {{ version_number }}
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: shapeit5")
whatis("Description: shapeit5 {{ version_number }}")-------------------------------------------

prepend_path('PATH', '{{ install_dir }}')
