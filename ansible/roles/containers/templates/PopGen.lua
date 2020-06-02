-- -*- lua -*-
help([[
This module configures PopGen container
]])
whatis("Version: item.rstudio_version")
whatis("Keywords: R, RStudio, Rscript, arlecore, beast")
whatis("Description: PopGen container with arlecore and beast")

local singularity_image = "{{ container_image }}"

setenv ("R_INSTALL_STAGED" ,"false")

apps = {
  "R",
  "Rscript",
  "rstudio",
  "arlecore",
  "beast",
  "beauti",
  "loganalyser",
  "logcombiner",
  "treeannotator",
  "treestat"
}

for i, app in ipairs(apps) do
    set_alias(app, "singularity run --app " .. app .. " " .. singularity_image)
end

