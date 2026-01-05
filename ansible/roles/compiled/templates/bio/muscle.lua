-- -*- lua -*-
help([[
This module configures Muscle Multiple Sequence Aligner {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: multiqc")
whatis("Description: Muscle Multiple Sequence Aligner {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}')
