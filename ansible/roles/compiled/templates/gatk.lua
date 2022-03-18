-- -*- lua -*-
help([[
This module configures GATK {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: gatk")
whatis("Description: GATK {{ version_number }}")

load("java/openjdk-17.0.2", "python/3.10.1")

local gatk_dir = "{{ install_dir }}"

setenv('_JAVA_OPTIONS', '-Xmx16g')

prepend_path('PATH', gatk_dir)

