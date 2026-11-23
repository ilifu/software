-- -*- lua -*-
help([[
This module configures exomiser {{ version_number }} for use
{% if version_number is version('15.0.0', '>=') %}

From 15.0.0 the command line needs a subcommand:
    exomiser analyse --analysis my-analysis.yml
    exomiser batch my-commands.txt
Scripts written for 14.x and earlier need updating, and combined scores are
not comparable with earlier releases. Run "exomiser --help" for details.
{% endif %}
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: exomiser")
whatis("Description: exomiser {{ version_number }}")

load("{{ java_module }}")

local exomiser_dir = "{{ install_dir }}"

setenv('_JAVA_OPTIONS', '-Xmx16g')

prepend_path('PATH', exomiser_dir)
prepend_path('CLASSPATH', exomiser_dir)

set_alias("exomiser", "java -jar {{ install_dir }}/exomiser-cli-{{ version_number }}.jar")
