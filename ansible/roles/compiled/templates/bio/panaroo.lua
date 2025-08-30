-- -*- lua -*-
help([[
This module configures panaroo {{ version_number }}

Panaroo is a graph-based pangenome analysis tool that accounts for many of the issues
inherent in older pipelines. It is able to account for annotation errors and
inconsistencies which are common in large analysis involving hundreds or thousands of isolates.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: panaroo, pangenome analysis, bacterial genomes, graph-based")
whatis("Description: panaroo {{ version_number }} - Graph-based pangenome analysis tool")

prepend_path('PATH', '{{ install_dir }}/bin')
prepend_path('PYTHONPATH', '{{ install_dir }}/lib/python*/site-packages')

-- Dependencies
depends_on("prokka", "cd-hit", "mafft", "prank")