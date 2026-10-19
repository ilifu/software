-- -*- lua -*-
help([[
This module configures MEGAHIT {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: megahit, metagenomics, assembly")
whatis("Description: MEGAHIT {{ version_number }} metagenome assembler")

-- the megahit front-end is a python script (#!/usr/bin/env python)
load("{{ python_module }}")

prepend_path('PATH', '{{ install_dir }}/bin')
