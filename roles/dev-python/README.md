Ansible Role: Dev Python
=========

Sets up a python development environment


Requirements
------------

None


Role Variables
--------------

    dev_python_versions:
      - 3
    pip_packages:
      - virtualenv
      - python-language-server
    atom_packages:
      - atom-ide-ui
      - ide-python


Dependencies
------------

NOTE: since these are os-dependent, they will not be installed automatically. the appropriate dependencies will need to be included in your containing playbook
- https://github.com/geerlingguy/ansible-role-homebrew (for macOS / OSX)


Example Playbook
----------------

To install with defaults (python 3)

    - hosts: all
      connection: local
      roles:
        - { role: geerlingguy.homebrew }
        - { role: dev-python }

OR to install python 2

        - { role: dev-python, dev_python_versions: [2] }

OR to install python 2 & 3

        - { role: dev-python, dev_python_versions: [2,3] }

License
-------

CC0


Author Information
------------------

Drew Heles
