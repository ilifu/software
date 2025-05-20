-- -*- lua -*-
help([[
This module configures spliceai {{ version_number }}
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: spliceai")
whatis("Description: spliceai {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
