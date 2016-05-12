## Ruby Machine role

Role for a generic Ruby App Server with Ruby installed through RVM.

 - Install Git
 - Install RVM from official role (https://github.com/rvm/rvm1-ansible)
 - Install Node.js, required as Javascript engine

Depends on `basic` and `rvm` roles.

The deploy/app user is added to `rvm` group, in order to run `bundle install` commands.
