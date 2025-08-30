-- -*- lua -*-
help([[
This module configures raxml {{ version_number }}

RAxML (Randomized Axelerated Maximum Likelihood) is a program for sequential 
and parallel maximum likelihood based inference of large phylogenetic trees. 
It can also be used for postprocessing sets of phylogenetic trees.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: raxml, phylogenetic trees, maximum likelihood, phylogeny")
whatis("Description: raxml {{ version_number }} - Maximum likelihood phylogenetic inference")

prepend_path('PATH', '{{ install_dir }}/bin')