-- -*- lua -*-
help([[
This module configures seqtk {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: seqtk, fasta, fastq")
whatis("Description: seqtk {{ version_number }} - toolkit for processing FASTA/Q sequences")

local seqtk_dir = "{{ install_dir }}"
local bin_dir = pathJoin(seqtk_dir, "bin")

prepend_path('PATH', bin_dir)
