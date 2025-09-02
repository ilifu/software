-- -*- lua -*-
help([[
This module configures SnpEff {{ item.version_number }} for use.
SnpEff is a variant annotation and effect prediction tool.
]])
whatis("Version: {{ item.version_number }}")
whatis("Keywords: SnpEff, variant annotation, genomics")
whatis("Description: SnpEff {{ item.version_number }} - Genomic variant annotation and functional effect prediction toolbox")

depends_on("{{ item.java_module }}")

prepend_path('PATH', "{{ snpeff_install_dir }}")

setenv('SNPEFF_HOME', "{{ snpeff_install_dir }}")
setenv('SNPEFF_DATA', "{{ snpeff_dir }}/data")

set_alias("snpEff", "java -jar {{ snpeff_install_dir }}/snpEff.jar")
set_alias("SnpSift", "java -jar {{ snpeff_install_dir }}/SnpSift.jar")