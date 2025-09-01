-- -*- lua -*-
help([[
This module configures DRAM {{ version_number }}

DRAM (Distilled and Refined Annotation of Metabolism) is a tool for annotating 
metagenomic assembled genomes and VirSorter identified viral contigs. DRAM 
annotates MAGs and viral contigs using KEGG, UniRef90, PFAM, dbCAN, RefSeq viral, 
VOGDB and the MEROPS peptidase database as well as custom user databases.

WARNING: DRAM requires substantial memory (64GB+) and storage (30GB+) resources.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: metagenomics, annotation, metabolism, MAGs")
whatis("Description: DRAM {{ version_number }} - Metagenome annotation and metabolism analysis")

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
prepend_path('PYTHONPATH', '{{ install_dir }}/.venv/lib/python*/site-packages')

-- Dependencies
depends_on("{{ prodigal_module }}", "{{ hmmer_module }}")