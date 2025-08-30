-- -*- lua -*-
help([[
This module configures screed {{ version_number }}

Screed is a Python library for reading and writing FASTA and FASTQ files.
It provides a simple and efficient way to parse sequence files and is 
particularly useful for bioinformatics applications.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: screed, fasta, fastq, sequence parsing, python")
whatis("Description: screed {{ version_number }} - Python sequence file parser")

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
prepend_path('PYTHONPATH', '{{ install_dir }}/.venv/lib/python*/site-packages')