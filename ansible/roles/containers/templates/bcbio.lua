-- -*- lua -*-
help([[
This module configures bcbio_nextgen container
]])
whatis("Keywords: bcbio_nextgen")
whatis("Description: alidated, scalable, community developed variant calling, RNA-seq and small RNA analysis.")

local singularity_image = "{{ container_image }}"

setenv ("SINGULARITY_BIND", "/software/bio/bcbio_genomes:/opt/bcbio_nextgen/genomes")

set_alias("bcbio_nextgen.py", "singularity exec {{ container_image }} bcbio_nextgen.py")
