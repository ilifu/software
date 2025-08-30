-- -*- lua -*-
help([[
This module configures fastp {{ version_number }}

fastp is an ultra-fast all-in-one FASTQ preprocessor (QC/adapters/trimming/filtering/splitting/merging).
It provides quality control, adapter trimming, quality filtering, per-read quality pruning and many 
other operations with a single scan of the FASTQ data. It supports both single-end and paired-end data.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: fastp, FASTQ, preprocessor, quality control, trimming")
whatis("Description: fastp {{ version_number }} - Ultra-fast all-in-one FASTQ preprocessor")

depends_on("libisal", "libdeflate")

prepend_path('PATH', '{{ install_dir }}/bin')