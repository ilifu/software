-- -*- lua -*-
help([[
This module configures disk management for use
]])
whatis("A python environment with disk management tools")
whatis("Description: Simple tools for tracking disk usage")

prepend_path("PATH", "{{ disk_management_dir }}/bin")
