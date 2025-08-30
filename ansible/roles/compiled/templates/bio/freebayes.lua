-- -*- lua -*-
help([[
This module configures freebayes {{ version_number }}

FreeBayes is a Bayesian genetic variant detector designed to find small 
polymorphisms, specifically SNPs (single-nucleotide polymorphisms), 
indels (insertions and deletions), MNPs (multi-nucleotide polymorphisms), 
and complex events (composite insertion and substitution events) smaller 
than the length of a short-read sequencing alignment.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: freebayes, variant calling, SNP, indel, bayesian")
whatis("Description: freebayes {{ version_number }} - Bayesian genetic variant detector")

prepend_path('PATH', '{{ install_dir }}/bin')

-- Dependencies
depends_on("samtools", "bcftools")