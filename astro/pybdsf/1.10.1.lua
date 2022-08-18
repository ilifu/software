-- -*- lua -*-
help([[
This module configures PyBDSF 1.10.1. After loading the module on a compute node (e.g. 'srun --x11 --pty bash' then 'module load pybdsf/1.10.1'), use 'pybdsf' to launch an interactive PyBDSF session.
]])
whatis("Version: 1.10.1")
whatis("Keywords: PyBDSF, pybdsf, 1.10.1, python3, py3")
whatis("Description: PyBDSF 1.10.1 container")

local singularity_image = "/idia/software/containers/ASTRO-PY3.8.simg"

set_alias("pybdsf", "singularity exec " .. singularity_image .. " pybdsf")
