-- -*- lua -*-
help([[
This module configures snippy {{ version_number }}

Snippy finds SNPs between a haploid reference genome and your NGS sequence reads.
It will find both substitutions (SNPs) and insertions/deletions (indels).
It produces a core SNP alignment suitable for building phylogenetic trees.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: snippy, variant calling, SNPs, indels, phylogeny")
whatis("Description: snippy {{ version_number }} - Rapid haploid variant calling and core genome alignment")

prepend_path('PATH', '{{ install_dir }}/bin')

-- Dependencies
depends_on("perl")
depends_on("samtools", "bwa", "bcftools", "vcftools", "freebayes")