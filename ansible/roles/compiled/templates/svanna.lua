-- -*- lua -*-
help([[
This module configures SvAnna {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: SvAnna")
whatis("Description: SvAnna {{ version_number }}")

load("java/openjdk-18.0.2")

local svanna_dir = "{{ install_dir }}"
prepend_path('PATH', '{{ install_dir }}')
