-- -*- lua -*-
help([[
This module configures bowtie2 {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: bowtie2")
whatis("Description: bowtie2 {{ version_number }}")

prepend_path('PATH', '{{install_dir}}')
prepend_path('PATH', '{{install_dir}}/scripts')
