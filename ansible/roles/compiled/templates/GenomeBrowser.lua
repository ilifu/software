-- -*- lua -*-
help([[
This module configures Genome Browser and Blat cli tools for use
]])
whatis("Keywords: Genome Browser, Blat")
whatis("Description: Genome Browser and Blat cli tools")

prepend_path('PATH', '{{ install_dir }}')
prepend_path('PATH', '{{ install_dir }}/blat')
