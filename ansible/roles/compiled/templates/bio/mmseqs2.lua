-- -*- lua -*-
help([[
This module configures MMseqs2 {{ version_number }}

MMseqs2 (Many-against-Many sequence searching) is a software suite to search and 
cluster huge protein and nucleotide sequence sets. MMseqs2 is open source GPL-licensed 
software implemented in C++ for Linux, macOS, and (as beta-version, via cygwin) Windows. 
The software is designed to run on multiple cores and servers and exhibits very good 
scalability. MMseqs2 can run 10000 times faster than BLAST. At 100 times faster 
than BLAST, it achieves almost the same sensitivity. It can perform profile searches 
with the same sensitivity as PSI-BLAST at over 400 times faster speed.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: sequence search, clustering, protein, nucleotide, bioinformatics")
whatis("Description: MMseqs2 {{ version_number }} - Ultra-fast sequence search and clustering suite")

prepend_path('PATH', '{{ install_dir }}/bin')

-- Set MMseqs2 specific environment variables
setenv('MMSEQS_FORCE_MERGE', '1')
setenv('MMSEQS_IGNORE_WARNINGS', '0')