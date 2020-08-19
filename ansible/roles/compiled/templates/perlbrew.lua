-- -*- lua -*-
help([[
This module configures perlbrew for use
]])
whatis("Keywords: perlbrew")
whatis("Description: perlbrew manages perl installations. Note, you cannot unload this module in a session!")

local perlbrew_dir = "{{ install_dir }}"
local bin_dir = pathJoin(perlbrew_dir, "bin")
local home_dir = os.getenv ( "HOME" )
local perlbrew_home = pathJoin(home_dir, '.perlbrew')

setenv('PERLBREW_ROOT', perlbrew_dir)
setenv('PERLBREW_HOME', perlbrew_home)
prepend_path('PATH', bin_dir)
