-- -*- lua -*-
help([[
This module configures {{ container_name }}
]])
whatis("Version: {{ beast_version }}")
whatis("Keywords: beast, beagle, cuda, GPU")
whatis("Description: Beast {{ beast_version }} with Beagle {{ beagle_version }} and cuda {{ cuda_version }}")

local singularity_image = "{{ container_image }}"

apps = {
  "beast",
  "beauti",
  "loganalyser",
  "logcombiner",
  "treestat",
}

for i, app in ipairs(apps) do
    set_alias(app, "singularity run --app " .. app .. " " .. singularity_image)
end
