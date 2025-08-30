-- -*- lua -*-
help([[
This module configures rgi {{ version_number }}

RGI (Resistance Gene Identifier) predicts resistomes from protein or nucleotide data,
including metagenomics data, based on homology and SNP models. It uses reference data
from the Comprehensive Antibiotic Resistance Database (CARD).
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: rgi, resistance gene identifier, antibiotic resistance, CARD")
whatis("Description: rgi {{ version_number }} - Resistance Gene Identifier")

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
prepend_path('PYTHONPATH', '{{ install_dir }}/.venv/lib/python*/site-packages')

-- Dependencies
depends_on("diamond", "ncbi-blast+", "prodigal")