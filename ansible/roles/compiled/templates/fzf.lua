-- -*- lua -*-
help([[
This module configures fzf for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: fzf")
whatis("Description: fzf")

prepend_path('PATH', '{{ install_dir }}')
