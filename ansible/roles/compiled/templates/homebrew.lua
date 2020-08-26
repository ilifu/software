-- -*- lua -*-
help([[
This module configures homebrew for use
]])
whatis("Keywords: homebrew")
whatis("Description: Use homebrew to manage software packages")

local homebrew_dir = "{{ install_dir }}"
local bin_dir = pathJoin(homebrew_dir, "bin")
local man_dir = pathJoin(homebrew_dir, "manpages")

load("ruby/2.6")

setenv('HOMEBREW_PREFIX', homebrew_dir)
setenv('HOMEBREW_PREFIX_DEFAULT', homebrew_dir)
prepend_path('PATH', bin_dir)
prepend_path('MANPATH', man_dir)
