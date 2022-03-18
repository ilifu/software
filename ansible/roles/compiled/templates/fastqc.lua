-- -*- lua -*-
help([[
This module configures fastqc {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: fastqc")
whatis("Description: FastQC {{ version_number }}")

load("java/openjdk-17.0.2")

local fastqc_dir = "{{ install_dir }}"

setenv('_JAVA_OPTIONS', '-Xmx16g')

prepend_path('PATH', fastqc_dir)

