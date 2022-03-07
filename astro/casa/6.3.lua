-- -*- lua -*-
help([[
This module configures CASA 6.3 (modular). After loading the module on a compute node (e.g. 'srun --x11 --pty bash' then 'module load casa/6.3'), use 'casapy' to launch an interactive ipython session inside the container, and then 'import casatasks, casatools'. Use 'casapy myscript.py' to run your CASA script inside an sbatch file, and 'casashell' to launch an interactive CASA session like in CASA 5.
]])
whatis("Version: 6.3.0.48")
whatis("Keywords: CASA, 6.3, 6, python3, py3")
whatis("Description: CASA 6.3 modular container")

local singularity_image = "/idia/software/containers/casa-6.3.simg"

set_alias("casashell", 'singularity exec ' .. singularity_image .. ' xvfb-run -a python -c "import casashell; casashell.start_casa(\\"\\")"')
-- set_alias("casapy", "singularity exec " .. singularity_image .. " ipython")
-- set_alias("casashell", "singularity shell " .. singularity_image)
-- set_alias("casavis", "singularity exec " .. singularity_image .. " xvfb-run -a ipython")
-- set_alias("casaslurm", "srun --x11 --pty singularity exec " .. singularity_image .. " ipython ")
-- set_alias("casaslurmvis", "srun --x11 singularity exec " .. singularity_image .. " xvfb-run -a ipython")

local bashStr = 'singularity exec /idia/software/containers/casa-6.3.simg xvfb-run -a ipython "$@"'
local cshStr = ''
set_shell_function("casapy", bashStr, cshStr)
