-- -*- lua -*-
help([[
This module configures the TRIBES container
]])
whatis("Keywords: tribes")
whatis("Description: TRIBES")

load("singularity")

prepend_path("PATH", "{{ tribes_binary_dir }}")
