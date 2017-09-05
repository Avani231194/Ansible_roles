Role Name
=========

This role setups the required dependencies and npm and nodejs packages.

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

```
- hosts: "{{ host }}"
  roles:
     - { role: osm_nodejs }
```

License
-------

BSD
