-- -*- lua -*-
help([[
This module configures mash {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: mash ")
whatis("Description: mash {{ version_number }}: fast genome and metagenome distance estimation using MinHash")

local mash_dir = "{{ install_dir }}"

prepend_path('PATH', mash_dir)

