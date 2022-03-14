-- -*- lua -*-
help([[
This module configures bcbio_nextgen container
]])
whatis("Keywords: bcbio_nextgen")
whatis("Description: alidated, scalable, community developed variant calling, RNA-seq and small RNA analysis.")

local singularity_image = "{{ container_image }}"

-- setenv ("SINGULARITY_BIND", "/software/bio/bcbio_genomes:/opt/bcbio_nextgen/genomes")
setenv ("SINGULARITY_BIND", "/software/bio/bcbio_genomes/Hsapiens/hg38/variation/cosmic-v91.vcf.gz:/opt/bcbio_nextgen/genomes/Hsapiens/hg38/variation/cosmic-v91.vcf.gz,/software/bio/bcbio_genomes/Hsapiens/hg38/variation/cosmic-v91.vcf.gz.tbi:/opt/bcbio_nextgen/genomes/Hsapiens/hg38/variation/cosmic-v91.vcf.gz.tbi,/software/bio/bcbio_genomes/Hsapiens/hg38/variation/cosmic.vcf.gz:/opt/bcbio_nextgen/genomes/Hsapiens/hg38/variation/cosmic.vcf.gz,/software/bio/bcbio_genomes/Hsapiens/hg38/variation/cosmic.vcf.gz.tbi:/opt/bcbio_nextgen/genomes/Hsapiens/hg38/variation/cosmic.vcf.gz.tbi")

set_alias("bcbio_nextgen.py", "singularity exec {{ container_image }} bcbio_nextgen.py")
