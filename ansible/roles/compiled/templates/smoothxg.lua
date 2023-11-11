-- -*- lua -*-
help([[
This module configures smoothxg {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: smoothxg")
whatis("Description: smoothxg {{ version_number }}")

load("{{ jemalloc_module }}")

prepend_path('PATH', "{{ install_dir }}/bin")
