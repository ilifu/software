-- -*- lua -*-
help([[
This module configures uv {{ uv_version }}, the Python package and version manager
]])
whatis("Version: {{ uv_version }}")
whatis("Keywords: uv, Python, packaging")
whatis("Description: uv {{ uv_version }} — an extremely fast Python package and project manager")

local uv_dir = "{{ uv_dir }}/{{ uv_version }}"
local bin_dir = pathJoin(uv_dir, "bin")

prepend_path('PATH', bin_dir)
