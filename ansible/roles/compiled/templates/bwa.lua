-- -*- lua -*-
help([[
This module configures bwa for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: bwa")
whatis("Description: bwa")

local bwa_dir = "{{ install_dir }}"

prepend_path('PATH', '{{ install_dir }}:{{ install_dir }}/bwakit')
