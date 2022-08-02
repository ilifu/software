-- -*- lua -*-
help([[
This module configures SRA Toolkit {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: SRA Toolkit")
whatis("Description: SRA Toolkit {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/bin')
