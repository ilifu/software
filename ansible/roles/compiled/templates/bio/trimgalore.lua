-- -*- lua -*-
help([[
This module configures trimgalore {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: trimgalore")
whatis("Description: TrimGalore {{ version_number }}")

load("{{ fastqc_module }}")
load("{{ cutadapt_module }}")

prepend_path('PATH', '{{ install_dir }}')

