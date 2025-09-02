-- -*- lua -*-
help([[This module configures GNU Parallel {{ version_number }}

GNU parallel is a shell tool for executing jobs in parallel using one or more computers. 
A job can be a single command or a small script that has to be run for each of the 
lines in the input. The typical input is a list of files, a list of hosts, a list 
of users, a list of URLs, or a list of tables.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: GNU Parallel, shell, parallel processing")
whatis("Description: GNU Parallel {{ version_number }} - Shell tool for parallel execution")

prepend_path('PATH', '{{ install_dir }}/bin')
prepend_path('MANPATH', '{{ install_dir }}/share/man')