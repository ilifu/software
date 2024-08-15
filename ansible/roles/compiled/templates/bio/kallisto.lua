-- -*- lua -*-
help([[
This module configures kallisto {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: kallisto")
whatis("Description: kallisto {{ version_number }}")

prepend_path('PATH', '{{install_dir}}/bin')
