-- -*- lua -*-
help([[
This module configures {{ container_name }}

There are several binaries available via this module:
 * R – Starts a normal interactive R session
 * RStudio or rstudio – Starts and RStudio server and outputs instructions on how to connect to it
 * Rscript – For running your R scripts from the command line

]])
whatis("Version: {{ item.rstudio_version }}")
whatis("Keywords: R, RStudio, Rscript")
whatis("Description: RStudio container")

local singularity_image = "{{ container_image }}"

setenv ("R_INSTALL_STAGED" ,"false")

prepend_path("PATH", "{{ R_binary_dir }}")

