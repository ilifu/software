-- -*- lua -*-
help([[
This module configures seqtk {{ version_number }}

seqtk is a fast and lightweight toolkit for processing sequences in FASTA or FASTQ format.
It seamlessly parses both FASTA and FASTQ files which can also be optionally compressed by gzip.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: seqtk, sequence toolkit, FASTA, FASTQ")
whatis("Description: seqtk {{ version_number }} - Fast and lightweight sequence processing toolkit")

prepend_path('PATH', '{{ install_dir }}/bin')