-- -*- lua -*-
help([[
This module configures neovim {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: neovim ")
whatis("Description: neovim {{ version_number }}: hyperextensible Vim-based text editor")

local neovim_dir = "{{ install_dir }}"

prepend_path('PATH', '{{ install_dir }}/bin')
prepend_path('MANPATH', '{{ install_dir }}/share/man')
