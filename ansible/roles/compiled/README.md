Role Name
=========

This role is for the maintenance of non-containerised software and lmod modules installed on the ilifu system.

Requirements
------------

The only requirement is that the directory structure from the `all` role is in place.

Notes
-----
When installing perl, the one perl module will likely fail and may need to be somewhat manually installed. 
https://stackoverflow.com/questions/47966512/error-installing-xmldomxpath

Role Variables
--------------

The roles use the directory structure that can be found in the `group_vars/all` file.

Dependencies
------------

This is dependent on the `all` role.

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