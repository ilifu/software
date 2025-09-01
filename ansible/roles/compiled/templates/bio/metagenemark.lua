-- -*- lua -*-
help([[
This module configures MetaGeneMark-2 {{ version_number }}

MetaGeneMark-2 is an unsupervised metagenomic gene finder that improves on 
MetaGeneMark by adding models for better gene start prediction, as well as 
automatic selection of genetic code (4 or 11).

IMPORTANT: This tool requires a GeneMark license key at $HOME/.gm_key
Download from: http://exon.gatech.edu/GeneMark/license_download.cgi
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: gene prediction, metagenomics, genetic code")
whatis("Description: MetaGeneMark-2 {{ version_number }} - Metagenomic gene prediction tool")

prepend_path('PATH', '{{ install_dir }}')

-- Set MetaGeneMark model directory
setenv('METAGENEMARK_MODELS', '{{ install_dir }}')