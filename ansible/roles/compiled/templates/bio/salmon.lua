-- -*- lua -*-
help([[
This module configures Salmon {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: Salmon")
whatis("Description: Salmon {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}/bin')
-- -*- lua -*-
help([[
This module configures STAR {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: STAR")
whatis("Description: STAR {{ version_number }}")

prepend_path('PATH', '{{ install_dir }}')

prepend_path('LD_LIBRARY_PATH', '{{install_dir}}/lib')
prepend_path('LIBRARY_PATH', '{{install_dir}}/lib')


