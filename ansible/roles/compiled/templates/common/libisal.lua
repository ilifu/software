help([[
Intel Intelligent Storage Acceleration Library (ISA-L) v{{ version_number }}

ISA-L is a collection of optimized low-level functions targeting storage applications.
ISA-L includes functions for erasure codes, CRCs, hashes, compression, and more.

URL: https://github.com/intel/isa-l
]])

whatis("Name: libisal")
whatis("Version: {{ version_number }}")
whatis("Description: Intel Intelligent Storage Acceleration Library")
whatis("URL: https://github.com/intel/isa-l")

depends_on("nasm")

local root = "{{ common_dir }}/libisal/{{ version_number }}"

prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("C_INCLUDE_PATH", pathJoin(root, "include"))
prepend_path("CPLUS_INCLUDE_PATH", pathJoin(root, "include"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))

setenv("LIBISAL_ROOT", root)