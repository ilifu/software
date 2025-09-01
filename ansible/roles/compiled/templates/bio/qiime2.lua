-- -*- lua -*-
help([[
This module configures QIIME2 {{ version_number }}

QIIME 2 is an AI-ready microbiome multi-omics data science platform that is 
free, open source, extensible, and community-developed. QIIME 2 enables 
researchers to conduct reproducible microbiome analysis using a variety of 
interfaces and tools.

SYSTEM REQUIREMENTS:
- Minimum 4GB RAM for small datasets, 8GB+ recommended
- 6-7GB disk space for installation
- Additional space for analysis data and results
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: microbiome, multi-omics, reproducible analysis")
whatis("Description: QIIME2 {{ version_number }} - Microbiome data science platform")

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
prepend_path('PYTHONPATH', '{{ install_dir }}/.venv/lib/python*/site-packages')

-- Set QIIME2 cache directory
setenv('QIIME2_CACHE_DIR', '{{ install_dir }}/.qiime2_cache')
setenv('TMPDIR', '{{ install_dir }}/.qiime2_cache')