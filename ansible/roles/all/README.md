Role Name
=========

This role is simply here to set up the environment necessary for the installing and managing of the software.

Requirements
------------

The only requirement is that the `/software` directory exists and is writable by the user running the role.

Role Variables
--------------

The role uses the directory variables from `group_vars/all` to check where to place the astro, bio and common software/src/containers/recipes.

Dependencies
------------

No dependencies

<!-- Example Playbook
----------------



Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 } -->

License
-------

BSD

Author Information
------------------

Role initially written by Dane Kennedy for ilifu.