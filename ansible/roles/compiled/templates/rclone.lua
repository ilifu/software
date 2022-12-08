-- -*- lua -*-
help([[
This module configures Rclone {{ version_number }} for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: rclone")
whatis("Description: rclone {{ version_number }}")

local rclone_dir = "{{ install_dir }}"

setenv('_JAVA_OPTIONS', '-Xmx16g')

prepend_path('PATH', rclone_dir)

