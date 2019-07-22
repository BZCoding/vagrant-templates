# MongoDB Role

Basic role for MongoDB development server, with optional authentication.

See also # https://docs.mongodb.com/manual/tutorial/install-mongodb-on-debian/

Requirements
------------

This role is built for Debian/Ubuntu machines and tested on Debian 9.

Role Variables
--------------

 - `mongodb_bind_address`: IP the server should listen to (default to 127.0.0.1), use 0.0.0.0 to accept connection from the outside world
 - `mongodb_port`: custom port
 - `mongodb_admin_user`: name of the administrator user
 - `mongodb_admin_password`: password for the administrator user

If both `mongodb_admin_user` and `mongodb_admin_password` are present, the user will be created and MongoDB will be configured with authentication turned on.

Dependencies
------------

This role depends on the `base` role.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: mongodb }

License
-------

BSD
