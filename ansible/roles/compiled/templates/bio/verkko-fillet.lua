-- -*- lua -*-
help([[
This module configures verkko-fillet {{ version_number }} for use

verkko-fillet is a toolkit for cleaning Verkko genome assemblies. It is driven
primarily from Python (typically in Jupyter):

    import verkkofillet as vf

The external tools it shells out to (mashmap, samtools, bgzip, seqtk, bedtools,
meryl, minimap2) are loaded automatically with this module.

Known limitations on this cluster:
  * screenAssembly() will not work - it needs a full verkko installation on
    PATH (for lib/verkko/scripts and its bundled contaminant references), and
    verkko is not currently packaged here.
  * graphAlign() needs GraphAligner, which is not packaged here. Its location is
    a runtime parameter (GraphAligner_path), so an external build can be passed in.
  * Dot plots need gnuplot, which is only available as a container here. The call
    site checks for it and degrades gracefully.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: verkko-fillet, verkko, assembly, genomics")
whatis("Description: verkko-fillet {{ version_number }} - toolkit for cleaning Verkko assemblies")

-- verkkofillet declares no dependencies of its own and shells out to these at
-- runtime. bgzip comes from htslib, not from the samtools tarball.
depends_on("{{ item.samtools_module }}",
           "{{ item.htslib_module }}",
           "{{ item.seqtk_module }}",
           "{{ item.mashmap_module }}",
           "{{ item.bedtools_module }}",
           "{{ item.meryl_module }}",
           "{{ item.minimap2_module }}")

local venv_dir = pathJoin("{{ install_dir }}", ".venv")
-- verkkofillet ships no console entry points; its CLI scripts live inside the
-- installed package, so that directory goes on PATH explicitly.
local script_dir = pathJoin(venv_dir, "lib", "{{ python_abi }}", "site-packages", "verkkofillet", "bin")

prepend_path('PATH', pathJoin(venv_dir, "bin"))
prepend_path('PATH', script_dir)
