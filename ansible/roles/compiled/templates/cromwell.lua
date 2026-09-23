-- -*- lua -*-
help([[
This module configures Cromwell and Womtool {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: nextflow")
whatis("Description: Cromwell and Womtool {{ version_number }}")

-- The SLURM backend runs docker tasks under singularity; the default
-- (unversioned) module is deliberate so cromwell follows the cluster default.
load("singularity")

prepend_path('PATH', '{{ install_dir }}')
