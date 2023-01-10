-- -*- lua -*-
help([[
This module configures SavvySuite for use
]])
whatis("Version: from git")
whatis("Keywords: savvysuite")
whatis("Description: SavvySuite")

load("{{ java_module }}")

local savvysuite_dir = "{{ install_dir }}"

-- setenv('_JAVA_OPTIONS', '-Xmx16g')

prepend_path('PATH', savvysuite_dir)
prepend_path('CLASSPATH', "{{ install_dir }}")

