-- -*- lua -*-
help([[
uv {{ uv_version }}
=========
An extremely fast Python package, project and virtual-environment manager.

Note: this module is python/uv, so it replaces any loaded python/<version>
module. Every python/<version> module also ships its own uv.

Virtual environment using a shared cluster Python (recommended)
---------------------------------------------------------------
Point uv at one of the shared interpreters (`module avail python`) so it
doesn't download its own copy into your home directory:

    $ uv venv --python {{ python_dir }}/3.12.13/bin/python ~/venvs/myproj
    $ source ~/venvs/myproj/bin/activate
    $ uv pip install numpy pandas

Projects
--------
    $ uv init myproj && cd myproj
    $ uv add numpy
    $ uv run python my_script.py

Command-line tools
------------------
    $ uvx ruff check .               run a tool without installing it
    $ uv tool install ruff           install a tool into ~/.local/bin

Where things live
-----------------
    Package cache        ~/.cache/uv               (`uv cache clean` to free space)
    Downloaded Pythons   ~/.local/share/uv/python  (counts toward your home quota)

With no Python requested, uv downloads its default (3.15 as of uv 0.13).
If uv warns "Failed to hardlink files", your venv is on a different
filesystem from the cache: `export UV_LINK_MODE=copy` silences it.

Documentation: https://docs.astral.sh/uv/
]])

whatis("Name: uv")
whatis("Version: {{ uv_version }}")
whatis("Category: python, package manager")
whatis("Keywords: uv, Python, packaging, venv")
whatis("Description: uv {{ uv_version }}, an extremely fast Python package and project manager")
whatis("URL: https://docs.astral.sh/uv/")

local uv_dir = "{{ uv_dir }}/{{ uv_version }}"
local bin_dir = pathJoin(uv_dir, "bin")

prepend_path('PATH', bin_dir)
