-- -*- lua -*-
help([[
This module configures git-lfs {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: git-lfs")
whatis("Description: git-lfs {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}')
prepend_path('MAN_PATH', "{{ install_dir }}/man")
