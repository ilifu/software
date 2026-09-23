-- -*- lua -*-
help([[
This module configures NextFlow {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: nextflow")
whatis("Description: NextFlow {{ version_number }}")

load("{{ java_module }}")
-- The shared nextflow.config enables Singularity in every SLURM profile;
-- the unversioned module is deliberate so nextflow follows the cluster default.
load("singularity")

prepend_path('PATH', '{{ install_dir }}')
