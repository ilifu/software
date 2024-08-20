-- -*- lua -*-
help([[
This module configures nanofilt {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: nanofilt")
whatis("Description: nanofilt {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
