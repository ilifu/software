-- -*- lua -*-
help([[
This module configures perlbrew for use
]])
whatis("Keywords: perlbrew")
whatis("Description: perlbrew manages perl installations. Note, you cannot unload this module in a session!")

local perlbrew_dir = "{{ install_dir }}"

if (mode() == "load") then
   io.stdout:write("source {{ install_dir }}/etc/bashrc\n")
end
