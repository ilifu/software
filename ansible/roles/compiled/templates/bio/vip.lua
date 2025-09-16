-- -*- lua -*-
help([[
This module configures VIP {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: variant interpretation pipeline, genomics")
whatis("Description: VIP (Variant Interpretation Pipeline) {{ version_number }}")

depends_on("apptainer/1.4.2", "java/openjdk-22.0.1")

prepend_path("PATH", "{{ install_dir }}")
setenv("VIP_DIR", "{{ install_dir }}")
setenv("VIP_DIR_DATA", "/software/data/bio/vip/{{ version_number }}")
