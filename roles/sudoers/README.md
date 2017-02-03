Ansible-Role: Sudoers
=========

Configures sudo for more convenient use of Vagrant on OSX. Could be used for other purposes &/or OSes.

Requirements
------------

None

Role Variables
--------------

None

Dependencies
------------

None

Example Playbook
----------------

    - hosts: all
      connection: local

      roles:
        - { role: sudoers }

License
-------

CC0

Author Information
------------------

Drew Heles
