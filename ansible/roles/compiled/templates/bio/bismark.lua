-- -*- lua -*-
help([[
This module configures Bismark {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: bismark")
whatis("Description: bismark {{ version_number }}")

prepend_path('PATH', '{{install_dir}}')
