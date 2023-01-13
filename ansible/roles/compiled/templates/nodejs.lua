-- -*- lua -*-
help([[
This module configures Node.js {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: Node.js, nodejs, node, nvm, npx")
whatis("Description: Node.js {{ version_number }}")

local bin_dir = "{{ install_dir }}/bin"

setenv('VERSION', '{{ version_number }}')
setenv('DISTRO', 'linux-x64')

prepend_path('PATH', bin_dir)
