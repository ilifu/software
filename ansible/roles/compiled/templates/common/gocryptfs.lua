-- -*- lua -*-
help([[
This module configures gocryptfs {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: gocryptfs")
whatis("Description: This module file configures the environment for using gocryptfs, a high-performance encrypted filesystem. It sets up the necessary paths so users can access gocryptfs binaries, enabling secure, encrypted file storage and access within their workflows.")

prepend_path('PATH', '{{ install_dir }}')

