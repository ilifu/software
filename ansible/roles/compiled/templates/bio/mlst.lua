-- -*- lua -*-
help([[
This module configures mlst {{ version_number }}

mlst scans contig files against traditional PubMLST typing schemes.
It provides rapid multilocus sequence typing from assembled sequences.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: mlst, multilocus sequence typing, pubmlst")
whatis("Description: mlst {{ version_number }} - Multilocus sequence typing from assembled sequences")

prepend_path('PATH', '{{ install_dir }}/bin')

-- Set MLST database path
setenv('MLST_DB', '{{ install_dir }}/db')

-- Dependencies
depends_on("ncbi-blast+", "perl")