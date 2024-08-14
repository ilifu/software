-- -*- lua -*-
help([[
This module configures subread {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: subread")
whatis("Description: subread {{ version_number }}")

prepend_path('PATH', '{{install_dir}}')
