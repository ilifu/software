-- -*- lua -*-
help([[
This module configures prokka {{ version_number }}

Prokka is a rapid prokaryotic genome annotation software tool that can fully annotate
a draft bacterial genome in about 10 minutes on a typical desktop computer. It produces
standards-compliant output files suitable for submission to NCBI.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: prokka, genome annotation, prokaryotic, bacteria")
whatis("Description: prokka {{ version_number }} - Rapid prokaryotic genome annotation")

prepend_path('PATH', '{{ install_dir }}/bin')
prepend_path('PERL5LIB', '{{ install_dir }}/lib')

-- Set prokka database path
setenv('PROKKA_DBDIR', '{{ install_dir }}/db')

-- Dependencies
depends_on("prodigal", "ncbi-blast+", "perl")