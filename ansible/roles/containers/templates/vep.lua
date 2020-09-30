-- -*- lua -*-
help([[
This module configures the vep container
]])
whatis("Keywords: vep, bioperl")
whatis("Description: Variant Effect Predictor (vep) container")

local singularity_image = "{{ container_image }}"

setenv ("SINGULARITY_BINDPATH" ,"{{ data_dir }}:{{ cache_dir }}")

set_alias("vep", "singularity exec " .. singularity_image .. " vep --cache --dir_cache {{ cache_dir }} --dir_plugins {{ cache_dir }}")
set_alias("filter_vep", "singularity exec " .. singularity_image .. " filter_vep")


