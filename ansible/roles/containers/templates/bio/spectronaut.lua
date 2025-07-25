-- -*- lua -*-
help([[
This module configures the Spectronaut container
]])
whatis("Keywords: Spectronaut")
whatis("Description: Spectronaut.")

load("singularity")

prepend_path("PATH", "{{ spectronaut_binary_dir }}")
