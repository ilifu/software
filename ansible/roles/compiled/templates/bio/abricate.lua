-- -*- lua -*-
help([[
This module configures abricate {{ version_number }}

ABRicate is a tool for mass screening of contigs for antimicrobial resistance
and virulence genes. It comes bundled with multiple databases including
ResFinder, CARD, ARG-ANNOT, NCBI, and others.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: abricate, antimicrobial, resistance, virulence")
whatis("Description: abricate {{ version_number }} - Mass screening of contigs for antimicrobial and virulence genes")

prepend_path('PATH', '{{ install_dir }}/bin')

-- Set database path
setenv('ABRICATE_DB_PATH', '{{ install_dir }}/db')

-- Dependencies
depends_on("ncbi-blast+", "perl")