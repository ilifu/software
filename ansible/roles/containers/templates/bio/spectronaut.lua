-- -*- lua -*-
help([[
This module configures the Spectronaut container
]])
whatis("Keywords: Spectronaut")
whatis("Description: Software for mass spectrometry data analysis, particularly for proteomics.")

load("singularity")

prepend_path("PATH", "{{ spectronaut_binary_dir }}")
