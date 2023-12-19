-- -*- lua -*-
help([[
This module configures pgplot {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: pgplot")
whatis("Description: pgplot {{ version_number }}")

setenv("PGPLOT_DIR", "{{ install_dir }}")
setenv("PGPLOT_FONT", "{{ install_dir }}/grfont.dat")

-- prepend_path('PATH', "{{ install_dir }}/bin")
prepend_path('LD_LIBRARY_PATH', "{{ install_dir }}") --check this
prepend_path('LIBRARY_PATH', "{{ install_dir }}")
prepend_path('INCLUDE', "{{ install_dir }}/include")
prepend_path('C_INCLUDE', "{{ install_dir }}/include")
prepend_path('CPATH', "{{ install_dir }}/include")
prepend_path('PKG_CONFIG_PATH', "{{ install_dir }}/lib/pkgconfig")
