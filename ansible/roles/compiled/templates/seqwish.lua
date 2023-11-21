-- -*- lua -*-
help([[
This module configures seqwish {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: seqwish")
whatis("Description: seqwish {{ version_number }}")

load("{{ jemalloc_module }}")

prepend_path('PATH', "{{ install_dir }}/bin")
