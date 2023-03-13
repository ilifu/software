-- -*- lua -*-
help([[
This module configures NextFlow {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: nextflow")
whatis("Description: NextFlow {{ version_number }}")

load("{{ java_module }}")

prepend_path('PATH', '{{ install_dir }}')
