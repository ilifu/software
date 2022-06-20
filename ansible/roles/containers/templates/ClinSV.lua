-- -*- lua -*-
help([[
This module configures the ClinSV container
]])
whatis("Keywords: ClinSV")
whatis("Description: ClinSV")

set_alias("ClinSV", "singularity exec {{ container_image }}")
