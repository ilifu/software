-- -*- lua -*-
help([[
This module configures HTStream {{ version_number }}
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: htstream")
whatis("Description: htstream {{ version_number }}")

load("{{ boost_module }}")

prepend_path('PATH', '{{ install_dir }}/bin')
