-- -*- lua -*-
help([[
This module configures GenomeStrip {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: GenomeStrip,svtoolkit")
whatis("Description: GenomeStrip {{ version_number }}")

load("java/jre-1.8.0_261", "R/4.0.0", "drmaa/1.1.1", "bcftools/1.10.2", "htslib/1.10.2", "samtools/1.10")

local genomestrip_dir = "{{ install_dir }}"
local bin_dir = pathJoin(jre_dir, "bin")
local lib_dir = pathJoin(jre_dir, "lib")
local include_dir = pathJoin(jre_dir, "include")

setenv('SV_DIR', genomestrip_dir)

