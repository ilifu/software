-- -*- lua -*-
help([[
This module configures ariba {{ version_number }}

ARIBA (Antimicrobial Resistance Identification By Assembly) identifies antibiotic
resistance genes by running local assemblies. It can also be used for MLST calling.
The input is a FASTA file of reference sequences and paired sequencing reads.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: ariba, antimicrobial resistance, assembly, MLST")
whatis("Description: ariba {{ version_number }} - Antimicrobial Resistance Identification By Assembly")

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
prepend_path('PYTHONPATH', '{{ install_dir }}/.venv/lib/python*/site-packages')

-- Dependencies  
depends_on("spades", "samtools", "bwa", "bcftools")