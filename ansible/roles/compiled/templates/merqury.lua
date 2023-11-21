-- -*- lua -*-
help([[
This module configures merqury for use
]])
whatis("Keywords: merqury")
whatis("Description: merqury")
whatis("Version: {{ version_number }}")

setenv("MERQURY", "{{ install_dir }}")

load("java")
load("R/4.3.2")
load("bedtools/2.31.1")
load("samtools/1.18")
load("meryl/1.3")

prepend_path('PATH', "{{ install_dir }}")


