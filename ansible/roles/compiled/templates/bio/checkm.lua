-- -*- lua -*-
help([[
This module configures checkm {{ version_number }}

CheckM provides a set of tools for assessing the quality of genomes recovered
from isolates, single cells, and metagenomes. It provides estimates for genome
completeness and contamination by using collocated sets of genes that are ubiquitous
and single-copy within a phylogenetic lineage.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: checkm, genome quality, completeness, contamination")
whatis("Description: checkm {{ version_number }} - Genome quality assessment tool")

prepend_path('PATH', '{{ install_dir }}/bin')
prepend_path('PYTHONPATH', '{{ install_dir }}/lib/python*/site-packages')

-- Set CheckM data directory
setenv('CHECKM_DATA_PATH', '{{ install_dir }}/checkm_data')

-- Dependencies
depends_on("prodigal", "hmmer")