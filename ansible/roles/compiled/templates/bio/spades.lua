-- -*- lua -*-
help([[
This module configures spades {{ version_number }}

SPAdes is a genome assembly toolkit containing various assembly pipelines.
It includes SPAdes (single-cell and standard multi-cell assembly), metaSPAdes 
(metagenome assembly), RNA-SPAdes (transcriptome assembly), plasmidSPAdes 
(plasmid assembly), and biosyntheticSPAdes (biosynthetic gene cluster assembly).
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: spades, genome assembly, assembler, metagenome")
whatis("Description: spades {{ version_number }} - SPAdes genome assembly toolkit")

prepend_path('PATH', '{{ install_dir }}/bin')

-- Set SPAdes home directory
setenv('SPADES_HOME', '{{ install_dir }}')