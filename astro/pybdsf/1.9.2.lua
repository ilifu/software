-- -*- lua -*-
help([[
This module configures PyBDSF 1.9.2. After loading the module on a compute node (e.g. 'srun --x11 --pty bash' then 'module load pybdsf/1.9.2'), use 'pybdsf' to launch an interactive PyBDSF session.
]])
whatis("Version: 1.9.2")
whatis("Keywords: PyBDSF, pybdsf, 1.9.2, python3, py3")
whatis("Description: PyBDSF 1.9.2 container")

local singularity_image = "/idia/software/containers/casa-6.1.2.7-modular.simg"

set_alias("pybdsf", "singularity exec " .. singularity_image .. " pybdsf")
