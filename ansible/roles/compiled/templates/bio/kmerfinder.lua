-- -*- lua -*-
help([[
This module configures KmerFinder {{ version_number }}

KmerFinder identifies the species of bacteria and plasmids in raw reads as well 
as in assembled genomes/contigs. It works by using k-mers to find the best match 
in the database of species.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: species identification, k-mer, bacteria, plasmids")
whatis("Description: KmerFinder {{ version_number }} - Species identification using k-mers")

prepend_path('PATH', '{{ install_dir }}')
prepend_path('PATH', '{{ install_dir }}/bin')

-- Set KMA and KmerFinder paths
setenv('KMERFINDER_DB', '{{ install_dir }}/db')