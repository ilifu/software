-- -*- lua -*-
help([[
This module configures checkv {{ version_number }}

CheckV assesses the quality and completeness of metagenome-assembled viral genomes.
It provides estimates for viral genome completeness and contamination and can identify
proviruses in host genomes.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: checkv, viral genomes, quality assessment, metagenomes")
whatis("Description: checkv {{ version_number }} - Viral genome quality assessment tool")

prepend_path('PATH', '{{ install_dir }}/bin')
prepend_path('PYTHONPATH', '{{ install_dir }}/lib/python*/site-packages')

-- Set CheckV database directory
setenv('CHECKV_DB', '{{ install_dir }}/checkv-db')

-- Dependencies
depends_on("diamond", "hmmer", "prodigal")