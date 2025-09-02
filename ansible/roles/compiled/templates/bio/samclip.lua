-- -*- lua -*-
help([[This module configures samclip {{ version_number }}

samclip filters SAM/BAM files using soft clipping information. It can remove reads 
that have been soft clipped, and can also be used to remove reads that have a 
high proportion of soft clipped bases. This can be useful for cleaning up alignments 
and removing potentially problematic reads.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: SAM, BAM, soft clipping, alignment filtering")
whatis("Description: samclip {{ version_number }} - SAM/BAM soft clipping filter")

prepend_path('PATH', '{{ install_dir }}')