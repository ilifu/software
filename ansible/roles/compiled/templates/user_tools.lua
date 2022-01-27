-- -*- lua -*-
help([[
This module configures usertools for use
]])
whatis("Keywords: {% for tool in tools %}{{ tool.name }}{% if not loop.last %}, {% endif %}{% endfor %}")
whatis("Description: Simple tools to make using ilifu cluster a bit simpler…")

help([[
"{% for tool in tools %}{{ tool.name }}: {{tool.description}}
{% endfor %}
"
]])

append_path("PATH", "{{ usertools_dir }}/bin")
