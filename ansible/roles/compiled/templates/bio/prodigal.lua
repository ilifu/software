-- -*- lua -*-
help([[
This module configures prodigal {{ version_number }}

Prodigal is a fast, reliable protein-coding gene prediction software for prokaryotic genomes.
It runs efficiently on finished genomes, draft genomes, and metagenomes, handling gaps and 
partial genes while predicting the correct translation initiation site for most genes.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: prodigal, gene prediction, prokaryotic, protein-coding")
whatis("Description: prodigal {{ version_number }} - Prokaryotic gene prediction software")

prepend_path('PATH', '{{ install_dir }}/bin')