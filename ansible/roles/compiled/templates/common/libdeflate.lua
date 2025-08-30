help([[
libdeflate v{{ version_number }}

libdeflate is a heavily optimized library for DEFLATE/zlib/gzip compression and decompression.
It provides high performance compression and decompression capabilities for modern applications.

URL: https://github.com/ebiggers/libdeflate
]])

whatis("Name: libdeflate")
whatis("Version: {{ version_number }}")
whatis("Description: Heavily optimized DEFLATE/zlib/gzip compression library")
whatis("URL: https://github.com/ebiggers/libdeflate")

local root = "{{ common_dir }}/libdeflate/{{ version_number }}"

prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("C_INCLUDE_PATH", pathJoin(root, "include"))
prepend_path("CPLUS_INCLUDE_PATH", pathJoin(root, "include"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))

setenv("LIBDEFLATE_ROOT", root)