-- -*- lua -*-
help([[
This module configures srst2 {{ version_number }}

SRST2 (Short Read Sequence Typing) is designed to take Illumina sequence data,
a MLST database and/or a database of gene sequences (e.g. resistance genes)
and report which sequence types and genes are present.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: srst2, sequence typing, MLST, resistance genes")
whatis("Description: srst2 {{ version_number }} - Short Read Sequence Typing")

prepend_path('PATH', '{{ install_dir }}/bin')
prepend_path('PYTHONPATH', '{{ install_dir }}/lib/python*/site-packages')

-- Dependencies
depends_on("bwa", "samtools", "bowtie2")