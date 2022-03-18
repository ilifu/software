-- -*- lua -*-
help([[
This module configures Picard {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: picard")
whatis("Description: Picard {{ version_number }}")

load("java/openjdk-17.0.2")

local picard_dir = "{{ install_dir }}"

setenv('_JAVA_OPTIONS', '-Xmx16g')

prepend_path('CLASSPATH', picard_dir)
