-- -*- lua -*-
help([[
This module configures FragPipe {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: fragpipe, msrfagger")
whatis("Description: FragPipe {{ version_number }}")

load("{{ java_module }}")

prepend_path('PATH', '{{ install_dir }}/bin')