-- -*- lua -*-
help([[
This module configures bbmap {{ version_number }}

BBMap is a short read aligner and suite of bioinformatics tools. The package includes
BBMap (aligner), BBDuk (trimmer), BBMerge (merger), BBNorm (normalizer), Dedupe
(duplicate removal), Reformat (file format conversion), and many other tools.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: bbmap, sequence alignment, trimming, bioinformatics suite")
whatis("Description: bbmap {{ version_number }} - BBTools bioinformatics suite")

prepend_path('PATH', '{{ install_dir }}')

-- Set BBMap home directory
setenv('BBMAP_HOME', '{{ install_dir }}')

-- Dependencies
depends_on("java")