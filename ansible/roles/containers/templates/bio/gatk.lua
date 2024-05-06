-- -*- lua -*-
help([[
This module configures the GATK container
]])
whatis("Keywords: GATK")
whatis("Description: GATK")

load("singularity")

set_alias("gatk", "singularity run --bind /software:/software {{ container_image }} gatk")
prepend_path("PATH", "{{ gatk_binary_dir }}")
