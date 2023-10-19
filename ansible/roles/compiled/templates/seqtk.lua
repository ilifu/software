-- -*- lua -*-
help([[
This module configures seqtk {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: seqtk")
whatis("Description: seqtk {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}')
