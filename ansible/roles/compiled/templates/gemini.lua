-- -*- lua -*-
help([[
This module configures gemini for use
]])
whatis("Keywords: gemini")
whatis("Description: Gemini")

local gemini_dir = "{{ gemini_dir }}"
local bin_dir = pathJoin(gemini_dir, "bin")

prepend_path('PATH', bin_dir)
