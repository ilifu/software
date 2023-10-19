-- -*- lua -*-
help([[
This module configures snp-dists {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: snp-dists")
whatis("Description: snp-dists {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/bin')
