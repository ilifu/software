-- -*- lua -*-
help([[
This module configures the ProteoWizard container
]])
whatis("Keywords: ProteoWizard")
whatis("Description: ProteoWizard")

load("singularity")

prepend_path("PATH", "{{ proteowizard_binary_dir }}")
