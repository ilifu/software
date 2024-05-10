-- -*- lua -*-
help([[
This module configures REViewer {{ version_number }}
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: REViewer")
whatis("Description: REViewer {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}')
