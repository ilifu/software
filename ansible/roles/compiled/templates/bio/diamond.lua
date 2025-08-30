-- -*- lua -*-
help([[
This module configures diamond {{ version_number }}

DIAMOND is a sequence aligner for protein and translated DNA searches, 
designed for high performance analysis of big sequence data. It provides 
pairwise alignment of proteins and translated DNA at 100x-10,000x speed of BLAST.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: diamond, sequence, aligner, protein, blast")
whatis("Description: diamond {{ version_number }} - Accelerated BLAST compatible local sequence aligner")

prepend_path('PATH', '{{ install_dir }}/bin')