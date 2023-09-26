-- -*- lua -*-
help([[
This module configures Kraken2 {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: Kraken2")
whatis("Description: Kraken2 {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}')
