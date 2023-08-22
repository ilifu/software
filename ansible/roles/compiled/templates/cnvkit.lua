-- -*- lua -*-
help([[
This module configures CNVKit {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: cnvkit")
whatis("Description: CNVKit {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
