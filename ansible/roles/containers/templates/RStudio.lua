-- -*- lua -*-
help([[
This module configures {{ container_name }}
]])
whatis("Version: item.rstudio_version")
whatis("Keywords: R, RStudio, Rscript")
whatis("Description: RStudio container")

local singularity_image = "{{ container_image }}"

setenv ("R_INSTALL_STAGED" ,"false")

apps = {
  "R",
  "Rscript",
  "rstudio",
}

for i, app in ipairs(apps) do
    set_alias(app, "singularity run --app " .. app .. " " .. singularity_image)
end

prepend_path("PATH", "{{ R_binary_dir }}")

