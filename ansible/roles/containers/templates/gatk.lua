-- -*- lua -*-
help([[
This module configures the GATK container
]])
whatis("Keywords: GATK")
whatis("Description: GATK")

set_alias("gatk", "singularity run --bind /software:/software {{ container_image }}")
