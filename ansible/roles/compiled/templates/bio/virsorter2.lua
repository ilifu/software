-- -*- lua -*-
help([[
This module configures virsorter2 {{ version_number }}

VirSorter2 applies a multi-classifier, expert-guided approach to detect diverse DNA 
and RNA virus genomes in microbiome data. It has been tested on a variety of 
environments and can identify viruses of various genome types.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: virsorter2, viral genomes, metagenomics, virus identification")
whatis("Description: virsorter2 {{ version_number }} - Viral genome identification in microbiomes")

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
prepend_path('PYTHONPATH', '{{ install_dir }}/.venv/lib/python*/site-packages')

-- Set VirSorter2 database directory
setenv('VIRSORTER_DB', '{{ install_dir }}/db')

-- Dependencies
depends_on("prodigal", "hmmer", "screed")