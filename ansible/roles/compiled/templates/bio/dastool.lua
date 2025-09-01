-- -*- lua -*-
help([[
This module configures DAS_Tool {{ version_number }}

DAS Tool is an automated method that integrates the results of a flexible 
number of binning algorithms to calculate an optimized, non-redundant set 
of bins from a single assembly.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: binning, metagenomics, genome assembly")
whatis("Description: DAS_Tool {{ version_number }} - Metagenome binning optimization tool")

prepend_path('PATH', '{{ install_dir }}')
setenv('R_LIBS_USER', '{{ install_dir }}/R_libs')

-- Dependencies
depends_on("{{ R_module }}", "{{ blast_module }}", "{{ diamond_module }}", "{{ prodigal_module }}")