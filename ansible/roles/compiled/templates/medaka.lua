-- -*- lua -*-
help([[
This module configures NanoPlot {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: nanoplot")
whatis("Description: NanoPlot {{ version_number }}")

{% for module in item.modules %}
load('{{ module }}')
{% endfor %}

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
