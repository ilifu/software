-- -*- lua -*-
help([[
This module configures apptainer {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: apptainer")
whatis("Description: apptainer {{ version_number }}")

depends_on('{{ squashfuse_module }}', '{{ gocryptfs_module }}')

prepend_path('PATH', '{{ install_dir }}/bin')
prepend_path('MANPATH', '{{ install_dir }}/share/man')
