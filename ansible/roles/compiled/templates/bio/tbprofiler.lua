-- -*- lua -*-
help([[
This module configures TBProfiler {{ version_number }}

TBProfiler is a tool for profiling Mycobacterium tuberculosis to detect resistance 
and strain type from whole genome sequencing data. The pipeline aligns reads to 
the H37Rv reference using bowtie2, BWA or minimap2 and then calls variants using 
bcftools, comparing these variants to a drug-resistance database.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: tuberculosis, drug resistance, WGS, variant calling")
whatis("Description: TBProfiler {{ version_number }} - M. tuberculosis profiling tool")

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
prepend_path('PYTHONPATH', '{{ install_dir }}/.venv/lib/python*/site-packages')

-- Set TBProfiler database directory
setenv('TBPROFILER_DB', '{{ install_dir }}/.tbdb')

-- Dependencies
depends_on("{{ bwa_module }}", "{{ samtools_module }}", "{{ bcftools_module }}", "{{ freebayes_module }}", "{{ trimmomatic_module }}", "{{ minimap2_module }}", "{{ snpeff_module }}", "{{ parallel_module }}", "{{ samclip_module }}", "{{ htslib_module }}")