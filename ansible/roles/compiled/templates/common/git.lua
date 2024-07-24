-- -*- lua -*-
help([[
This module configures git {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: git")
whatis("Description: git {{ version_number }}")

load("{{ gettext_module }}")

prepend_path('PATH', '{{ install_dir }}/bin')
