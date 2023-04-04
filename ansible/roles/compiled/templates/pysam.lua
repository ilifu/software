-- -*- lua -*-
help([[
This module configures Pysam {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: pysam")
whatis("Description: Pysam {{ version_number }}")

{% for module in modules %}
load("{{ module }}")
{% endfor %}

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
