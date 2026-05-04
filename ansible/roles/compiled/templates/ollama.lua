-- -*- lua -*-
help([[
This module configures ollama {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: ollama")
whatis("Description: ollama {{ version_number }}: run large language models locally")

local ollama_dir = "{{ install_dir }}"

setenv('OLLAMA_MODELS', '/software/data/common/models')
prepend_path('PATH', '{{ install_dir }}/bin')
prepend_path('LD_LIBRARY_PATH', '{{ install_dir }}/lib')
