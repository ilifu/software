-- -*- lua -*-
help([[
This module configures the gnuplot container
]])
whatis("Keywords: gnuplot")
whatis("Description: gnuplot")

load("singularity")

prepend_path("PATH", "{{ gnuplot_binary_dir }}")
