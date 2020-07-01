-- -*- lua -*-
help([[
This module configures canvas {{ version_number }} for use. Be sure to have mono installed / loaded
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: canvas")
whatis("Description: canvas {{ version_number }}")

local canvas_dir = "{{ install_dir }}"

set_alias("Canvas", "mono " .. canvas_dir .. "/Canvas.dll")