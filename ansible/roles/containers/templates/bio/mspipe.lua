-- -*- lua -*-
help([[
This module configures the msPIPE container
]])
whatis("Keywords: mspipe")
whatis("Description: msPIPE")

load("singularity")

prepend_path("PATH", "{{ mspipe_binary_dir }}")
