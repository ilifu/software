-- -*- lua -*-
help([[
This module configures RSEM for use
]])
whatis("Keywords: RSEM")
whatis("Description: RSEM")
whatis("Version: {{ version_number }}")

load("{{ r_module }}")

prepend_path('PATH', "{{ install_dir }}")
