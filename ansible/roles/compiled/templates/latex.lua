-- -*- lua -*-
help([[
This module configures LaTeX {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: LaTeX")
whatis("Description: LaTeX {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/bin/x86_64-linux')
