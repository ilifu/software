-- -*- lua -*-
help([[
This module configures Cromwell and Womtool {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: nextflow")
whatis("Description: Cromwell and Womtool {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}')
