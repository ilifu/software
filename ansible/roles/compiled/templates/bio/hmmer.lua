-- -*- lua -*-
help([[
This module configures hmmer {{ version_number }}

HMMER is used for searching sequence databases for sequence homologs, 
and for making sequence alignments. It implements methods using 
probabilistic models called profile hidden Markov models (profile HMMs).
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: hmmer, sequence analysis, HMM, profile hidden markov models")
whatis("Description: hmmer {{ version_number }} - Profile hidden Markov model based sequence analysis")

prepend_path('PATH', '{{ install_dir }}/bin')
prepend_path('MANPATH', '{{ install_dir }}/share/man')