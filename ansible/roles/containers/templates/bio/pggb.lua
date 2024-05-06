-- -*- lua -*-
help([[
This module configures the pggb container
]])
whatis("Keywords: pggb")
whatis("Description: pggb")

load("singularity")

prepend_path("PATH", "{{ pggb_binary_dir }}")
