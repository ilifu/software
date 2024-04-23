-- -*- lua -*-
help([[
This module configures the ProteoWizard container
]])
whatis("Keywords: ProteoWizard")
whatis("Description: ProteoWizard. Provides the commands: {% for command in wine_commands %}{{ command }}{% if not loop.last %}, {% endif %}{% endfor %}.")

load("singularity")

prepend_path("PATH", "{{ proteowizard_binary_dir }}")
