-- -*- lua -*-
help([[
This module configures ReferenceSeeker {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: ReferenceSeeker")
whatis("Description: ReferenceSeeker {{ version_number }}")

load('{{ mash_module}}')
load('{{ mummer_module}}')
prepend_path('PATH', '{{ install_dir }}/.venv/bin')
