-- -*- lua -*-
help([[
This module configures pymlst {{ version_number }}

PyMLST is a Python implementation for multilocus sequence typing analysis.
It provides efficient MLST analysis with a Python-based interface.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: pymlst, multilocus sequence typing, python, MLST")
whatis("Description: pymlst {{ version_number }} - Python-based MLST analysis tool")

prepend_path('PATH', '{{ install_dir }}/bin')
prepend_path('PYTHONPATH', '{{ install_dir }}/lib/python*/site-packages')