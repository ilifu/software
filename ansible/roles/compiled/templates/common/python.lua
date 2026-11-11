-- -*- lua -*-
help([[
Python {{ version_number }}
==============
A shared, read-only Python {{ major_minor }} interpreter. Also provides pip, ipython,
ipykernel, virtualenv, pipenv and uv.

Install packages into your own virtual environment rather than this shared
interpreter (avoid `pip install --user`, which leaks packages into every
environment that uses this Python).

Virtual environment with venv
-----------------------------
    $ module load python/{{ version_number }}
    $ {{ 'virtualenv' if version_number is version('3', '<') else 'python -m venv' }} ~/venvs/myproj
    $ source ~/venvs/myproj/bin/activate
    $ pip install numpy pandas

{% if version_number is version('3.8', '>=') %}
Or, faster, with uv
-------------------
    $ uv venv --python {{ install_dir }}/bin/python ~/venvs/myproj
    $ source ~/venvs/myproj/bin/activate
    $ uv pip install numpy pandas

{% endif %}
In a Slurm batch script
-----------------------
    #!/bin/bash
    module load python/{{ version_number }}
    source ~/venvs/myproj/bin/activate
    python my_script.py

Using a virtual environment in Jupyter
--------------------------------------
    $ source ~/venvs/myproj/bin/activate
    $ pip install ipykernel
    $ python -m ipykernel install --user --name myproj

Documentation: https://docs.python.org/{{ major_minor }}/
]])

whatis("Name: python")
whatis("Version: {{ version_number }}")
whatis("Category: language, python")
whatis("Keywords: Python, interpreter, venv, pip")
whatis("Description: Python {{ version_number }} interpreter with pip, ipython, ipykernel and uv")
whatis("URL: https://www.python.org/")

local python_dir = "{{ install_dir }}"
local bin_dir = pathJoin(python_dir, "bin")
local man_dir = pathJoin(python_dir, "share/man")
local pkgconfig_dir = pathJoin(python_dir, "lib/pkgconfig")

prepend_path('PATH', bin_dir)
prepend_path('MANPATH', man_dir)
prepend_path('PKG_CONFIG_PATH', pkgconfig_dir)
{% if python_install_method | default('compiled') == 'compiled' %}
prepend_path('LD_LIBRARY_PATH', pathJoin(python_dir, "lib"))
{% endif %}

-- Conflicts with mamba/anaconda modules, which also put a python on PATH
family("python")
