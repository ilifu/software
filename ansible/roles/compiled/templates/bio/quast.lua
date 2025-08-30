-- -*- lua -*-
help([[
This module configures quast {{ version_number }}

QUAST (QUality ASsessment Tool) is a tool for genome assembly evaluation. 
It computes various metrics and can work with or without reference genomes.
The package includes QUAST, MetaQUAST, QUAST-LG, and Icarus visualizer.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: quast, genome assembly, quality assessment, evaluation")
whatis("Description: quast {{ version_number }} - Genome assembly quality assessment tool")

prepend_path('PATH', '{{ install_dir }}')
prepend_path('PYTHONPATH', '{{ install_dir }}')

-- Set QUAST environment
setenv('QUAST_HOME', '{{ install_dir }}')