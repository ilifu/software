-- -*- lua -*-
help([[
This module configures the atfncat container.

Website: https://www.atnf.csiro.au/research/pulsar/psrcat/download.html

Test commmand using the ATFN catalog: 
`psrcat -c "name p0 dm" 0437-4715` 

The -db_file argument is used to use your own catalog:
`psrcat -db_file CATALOG.db`

]])
whatis("Keywords: atfncat")
whatis("Description: atfncat")

load("singularity")

prepend_path("PATH", "{{ atfncat_binary_dir }}")
