-- -*- lua -*-
help([[
This module configures IQ-TREE {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: iqtree")
whatis("Description: IQ-TREE {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/bin')

