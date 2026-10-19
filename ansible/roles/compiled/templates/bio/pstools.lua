-- -*- lua -*-
help([[
This module configures pstools {{ version_number }} (commit {{ commit }}) for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: pstools, phasing, hi-c, assembly")
whatis("Description: pstools {{ version_number }} - fully phased sequences from HiFi and Hi-C")

prepend_path('PATH', '{{ install_dir }}')
