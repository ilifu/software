-- -*- lua -*-
help([[
This module configures mashmap {{ version_number }} for use

MashMap is a fast approximate long-read and assembly mapper.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: mashmap, alignment, mapping")
whatis("Description: mashmap {{ version_number }} - fast approximate sequence mapper")

-- mashmap links against the shared GSL and htslib libraries it was built with.
depends_on("libgsl/{{ item.gsl_version }}", "htslib/{{ item.htslib_version }}")

local mashmap_dir = "{{ install_dir }}"
local bin_dir = pathJoin(mashmap_dir, "bin")

prepend_path('PATH', bin_dir)
