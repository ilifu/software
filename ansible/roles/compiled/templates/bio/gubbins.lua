-- -*- lua -*-
help([[
This module configures gubbins {{ version_number }}

Gubbins (Genealogies Unbiased By recomBinations In Nucleotide Sequences) is an algorithm
that iteratively identifies loci containing elevated densities of base substitutions
while concurrently constructing a phylogeny based on the putative point mutations.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: gubbins, recombination, phylogeny, bacterial genomes")
whatis("Description: gubbins {{ version_number }} - Rapid phylogenetic analysis with recombination detection")

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
prepend_path('PYTHONPATH', '{{ install_dir }}/.venv/lib/python*/site-packages')

-- Dependencies
depends_on("fastml", "raxml")