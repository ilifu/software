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
    bashStr = 'singularity run --nv --app ' .. app .. ' ' .. singularity_image .. ' "$@"'
    cshStr = 'singularity run --nv --app ' .. app .. ' ' .. singularity_image .. ' $*'
    set_shell_function(app, bashStr, cshStr)
end
