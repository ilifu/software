-- -*- lua -*-
help([[
This module configures the vep container
]])
whatis("Keywords: vep, bioperl")
whatis("Description: Variant Effect Predictor (vep) container")

local singularity_image = "{{ container_image }}"

setenv ("INGULARITY_BINDPATH" ,"{{ data_dir }}:{{ cache_dir }}")

set_alias("vep", "singularity exec " .. singularity_image .. " vep --dir_cache {{ cache_dir }} --dir_plugins {{ cache_dir }}")


