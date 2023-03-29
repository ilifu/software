-- -*- lua -*-
help([[
This module configures Polypolish {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: polypolish")
whatis("Description: Polypolish {{ version_number }}")

load("{{ item.python_module }}")

prepend_path('PATH', "{{ install_dir }}")
