-- -*- lua -*-
help([[
This module configures the pggb container
]])
whatis("Keywords: pggb")
whatis("Description: pggb")

load("singularity")

local singularity_image = "{{ container_image }}"


apps = {
  "pggb",
  "wfmash",
  "seqwish",
  "smoothxg",
  "odgi",
  "gfaffix",
  "vg",
  "multiqc",
  "vcfbub",
  "vcflib",
  "fastix",
  "pafplot",
  "pggb",
  "samtools",
  "bedtools",
  "vcfwave",
}

for i, app in ipairs(apps) do
    bashStr = 'singularity run ' .. singularity_image .. ' ' .. app .. ' "$@"'
    cshStr = 'singularity run ' .. singularity_image .. ' ' ..  app .. ' $*'
    set_shell_function(app, bashStr, cshStr)
end
