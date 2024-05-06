-- -*- lua -*-
help([[
This module configures the DIANN container
]])
whatis("Keywords: diann")
whatis("Description: DIANN")

load("singularity")

prepend_path("PATH", "{{ diann_binary_dir }}")
