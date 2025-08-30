-- -*- lua -*-
help([[
This module configures scoary {{ version_number }}

Scoary is designed to take the gene_presence_absence.csv file from Roary as well as 
a traits file created by the user and calculate the assocations between all genes in 
the accessory genome and the traits. It reports a list of genes sorted by strength 
of association per trait.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: scoary, pan-genome, association studies, GWAS")
whatis("Description: scoary {{ version_number }} - Pan-genome association studies")

prepend_path('PATH', '{{ install_dir }}/bin')
prepend_path('PYTHONPATH', '{{ install_dir }}/lib/python*/site-packages')