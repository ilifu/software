-- -*- lua -*-
help([[
This module configures fastmlst {{ version_number }}

FastMLST is a multi-core tool for multilocus sequence typing of draft genome assemblies.
It provides a fast alternative to traditional MLST tools by using efficient 
sequence search algorithms.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: fastmlst, multilocus sequence typing, fast, multi-core")
whatis("Description: fastmlst {{ version_number }} - Fast multilocus sequence typing tool")

prepend_path('PATH', '{{ install_dir }}/venv/bin')
prepend_path('PYTHONPATH', '{{ install_dir }}')

-- Set virtual environment
setenv('VIRTUAL_ENV', '{{ install_dir }}/venv')

-- Dependencies
depends_on("blast/2.17.0")