-- -*- lua -*-
help([[
This module configures exomiser {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: exomiser")
whatis("Description: exomiser {{ version_number }}")

load("java/openjdk-17.0.2")

local exomiser_dir = "{{ install_dir }}"

setenv('_JAVA_OPTIONS', '-Xmx16g')

prepend_path('PATH', exomiser_dir)
prepend_path('CLASSPATH', exomiser_dir)

set_alias("exomiser", "java -jar {{ install_dir }}/exomiser-cli-{{ version_number }}.jar")
