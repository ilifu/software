-- -*- lua -*-
help([[
This module configures WhatsHap {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: cnvkit")
whatis("Description: WhatsHap {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
