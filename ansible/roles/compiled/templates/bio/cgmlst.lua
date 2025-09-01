-- -*- lua -*-
help([[
This module configures cgMLST {{ version_number }}

cgMLST is a fork of mlst of tseemann modified for cgmlst. Scan contig files
against cgMLST typing schemes. Not very fast when used with organisms with
a large number of allelic variants.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: cgMLST, typing, genome analysis")
whatis("Description: cgMLST {{ version_number }} - Core genome MLST typing tool")

prepend_path('PATH', '{{ install_dir }}/bin')
prepend_path('PERL5LIB', '{{ install_dir }}/perl5')

-- Dependencies
depends_on("{{ blast_module }}")