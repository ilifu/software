-- -*- lua -*-
help([[
This module configures InDelible {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: indelible")
whatis("Description: InDelible {{ version_number }}")

load("{{ python_module }}")
load("{{ samtools_module }}")
load("{{ htslib_module }}")
load("{{ bcftools_module }}")
load("{{ bedtools_module }}")
load("{{ blast_module }}")
load("{{ bwa_module }}")

prepend_path('PATH', '{{ install_dir }}/.venv/bin')
prepend_path('PATH', '{{ install_dir }}')
prepend_path('PATH', '{{ install_dir }}/vr_runner_scripts')
prepend_path('PERL5LIB', '{{ install_dir }}/')
