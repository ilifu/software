-- -*- lua -*-
help([[
This module configures tRNAscan-SE {{ version_number }}

tRNAscan-SE was written in the PERL (version 5.0 or higher) scripting language 
and developed on a DEC Alpha workstation under OSF1 (v 4.0). The program uses 
improved tRNA detection algorithms which have been proven more accurate than 
previous tools, at both the sensitivity and specificity levels. It has also been 
written to be more user-friendly, with more understandable output, and is more 
flexible in terms of the search parameters. The program has been successfully 
ported to Linux and other UNIX platforms.
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: tRNA, gene prediction, RNA, genomics")
whatis("Description: tRNAscan-SE {{ version_number }} - tRNA gene detection in eukaryotic and prokaryotic sequences")

prepend_path('PATH', '{{ install_dir }}/bin')
prepend_path('MANPATH', '{{ install_dir }}/share/man')

-- Dependencies
depends_on("{{ infernal_module }}")

-- Set tRNAscan-SE specific environment variables
setenv('TRNASCAN_CONF', '{{ install_dir }}/lib/tRNAscan-SE')
setenv('TRNASCAN_BIN', '{{ install_dir }}/bin')