-- -*- lua -*-
help([[
This module configures PRSice-2 {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: PRSice-2")
whatis("Description: PRSice-2 {{ version_number }}")

local prcise_dir = "{{ install_dir }}"

prepend_path('PATH', prcise_dir)

set_alias('PRSice.R', "Rscript " .. prcise_dir .. "/PRSice.R")
set_alias('PRSice', prcise_dir .. "/PRSice_linux")