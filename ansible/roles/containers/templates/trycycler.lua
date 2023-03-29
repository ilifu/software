-- -*- lua -*-
help([[
This module configures the Trycycler container
]])
whatis("Keywords: trycycler")
whatis("Description: Trycycler")

load("singularity")

prepend_path("PATH", "{{ trycycler_binary_dir }}")
