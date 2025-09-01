-- -*- lua -*-
help([[
This module configures AMRFinderPlus {{ version_number }}

AMRFinderPlus finds acquired antimicrobial resistance genes and point mutations 
in protein and/or assembled nucleotide sequences. It also includes "plus" stress, 
heat, and biocide resistance and virulence factors for some organisms.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: antimicrobial resistance, AMR, virulence, point mutations")
whatis("Description: AMRFinderPlus {{ version_number }} - Antimicrobial resistance gene finder")

prepend_path('PATH', '{{ install_dir }}/bin')

-- Set AMRFinder database directory
setenv('AMRFINDER_DB', '{{ install_dir }}/data')

-- Dependencies
depends_on("{{ blast_module }}", "{{ hmmer_module }}")