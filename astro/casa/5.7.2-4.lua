-- -*- lua -*-
help([[
This module configures CASA 5.7.2-4 (monolithic). After loading the module on a compute node (e.g. 'srun --x11 --pty bash' then 'module load casa/5.7.2-4'), use 'casapy' to launch an interactive CASA session inside the container, or 'casavis' for an interactive session with X-forwarding. Use 'casapy -c myscript.py' to run your CASA script inside an sbatch file, and 'casashell' to shell into the container (without launching CASA).
]])
whatis("Version: 5.7.2-4")
whatis("Keywords: CASA, 5.7.2-4, 6, python2, py2")
whatis("Description: CASA 5.7.2-4 monolithic container")

local singularity_image = "/idia/software/containers/casa-stable-5.7.2-4.simg"

set_alias("casashell", "singularity shell " .. singularity_image)
-- set_alias("casapy", "singularity exec " .. singularity_image .. " casa --nologger --log2term --nogui")
-- set_alias("casavis", "singularity exec " .. singularity_image .. " xvfb-run -a casa")
-- set_alias("casaslurm", "srun singularity exec " .. singularity_image .. " casa --nologger --log2term --nogui")
-- set_alias("casaslurmvis", "srun --x11 singularity exec " .. singularity_image .. " xvfb-run -a casa")

local bashStr = 'singularity exec /idia/software/containers/casa-stable-5.7.2-4.simg xvfb-run -a casa --nologger --log2term --nogui "$@"'
local cshStr = ''
set_shell_function("casapy", bashStr, cshStr)

local bashStr = 'singularity exec /idia/software/containers/casa-stable-5.7.2-4.simg casa "$@"'
local cshStr = ''
set_shell_function("casavis", bashStr, cshStr)
