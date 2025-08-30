help([[
NASM (Netwide Assembler) v{{ version_number }}

NASM is a portable assembler for the x86 CPU family with Intel-like syntax.
It can output a variety of binary formats including ELF, COFF, OMF, bin, etc.

URL: https://www.nasm.us/
]])

whatis("Name: nasm")
whatis("Version: {{ version_number }}")
whatis("Description: Netwide Assembler for x86 and x86-64")
whatis("URL: https://www.nasm.us/")

local root = "{{ common_dir }}/nasm/{{ version_number }}"

prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("MANPATH", pathJoin(root, "share/man"))

setenv("NASM_ROOT", root)