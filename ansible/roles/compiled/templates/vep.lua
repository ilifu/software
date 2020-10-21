-- -*- lua -*-
help([[
This module configures the vep
]])
whatis("Keywords: vep, bioperl")
whatis("Version: {{ version_number }}")
whatis("Description: Variant Effect Predictor")


load("{{ perl_module }}")
load("htslib/1.10.2")

prepend_path("PERL5LIB", "{{ install_dir }}")
prepend_path("PATH", "{{ install_dir }}")

set_alias("vep", "vep --cache --dir_cache {{ cache_dir }} --dir_plugins {{ cache_dir }}/Plugins")
