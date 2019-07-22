Docker
======

This playbook installs docker using the remote official quick install script.

It has been tested on Ubuntu/Debian machines.

Requirements
------------

Common role.

Role Variables
--------------

 - `docker_users`: array of user names to be included in the docker group

Dependencies
------------

Common role.

Example Playbook
----------------

```yaml
    - hosts: servers
      roles:
         - { role: docker, tags: ['docker'] }
```

License
-------

MIT
