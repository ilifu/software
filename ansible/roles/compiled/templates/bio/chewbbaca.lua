-- -*- lua -*-
help([[
This module configures chewBBACA {{ item.version_number }} for use.
chewBBACA is a comprehensive pipeline including a set of functions for the creation of a cgMLST schema and to define the allelic profiles of bacterial isolates.
]])
whatis("Version: {{ item.version_number }}")
whatis("Keywords: chewBBACA, cgMLST, bacterial genomics, allelic profiling")
whatis("Description: chewBBACA {{ item.version_number }} - cgMLST allele calling algorithm for bacterial genomics")

depends_on("{{ item.blast_module }}")

prepend_path('PATH', "{{ install_dir }}/.venv/bin")

setenv('CHEWBBACA_HOME', "{{ install_dir }}")
setenv('CHEWBBACA_VENV', "{{ install_dir }}/.venv")