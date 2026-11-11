-- -*- lua -*-
help([[
mamba {{ version_number }}: a fast, conda-compatible package and environment manager.
conda is installed alongside it, so both `mamba` and `conda` commands work.

Loading this module activates the read-only base environment. Create your own
environments (stored in ~/.conda/envs) with:

    $ mamba create -n myenv python numpy
    $ mamba activate myenv

Default channels: conda-forge, bioconda (strict channel priority).

https://mamba.readthedocs.io/
]])

whatis("Name: mamba")
whatis("Version: {{ version_number }}")
whatis("Keywords: python, conda, mamba, package manager")
whatis("Description: mamba {{ version_number }} with conda, from conda-forge")
whatis("URL: https://mamba.readthedocs.io/")

local mamba_dir = "{{ install_dir }}"
local mamba_exe = pathJoin(mamba_dir, "bin", "mamba")

setenv("MAMBA_ROOT_PREFIX", mamba_dir)
setenv("MAMBA_EXE", mamba_exe)

-- conda.sh defines the `conda` shell function; the mamba 2 hook defines `mamba`
-- (mamba 2 no longer piggybacks on conda's activation).
execute{
  cmd="source " .. mamba_dir .. "/etc/profile.d/conda.sh; "
    .. 'eval "$(' .. mamba_exe .. ' shell hook --shell bash)"; '
    .. "mamba activate",
  modeA={"load"},
}
execute{cmd="mamba deactivate", modeA={"unload"}}

-- Prevent from being loaded with another system python or conda environment
family("python")
