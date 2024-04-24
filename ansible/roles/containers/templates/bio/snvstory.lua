-- -*- lua -*-
help([[
This module configures the snvstory container
]])
whatis("Keywords: snvstory")
whatis("Description: snvstory")

load("singularity")

prepend_path("PATH", "{{ snvstory_binary_dir }}")
