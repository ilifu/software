-- -*- lua -*-
help([[
This module configures prank {{ version_number }}

PRANK is a probabilistic multiple alignment program for DNA, codon and 
amino-acid sequences. It's based on a novel algorithm that treats 
insertions correctly and avoids over-estimation of the number of deletion events.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: prank, multiple sequence alignment, probabilistic alignment")
whatis("Description: prank {{ version_number }} - Probabilistic multiple sequence alignment")

prepend_path('PATH', '{{ install_dir }}/bin')