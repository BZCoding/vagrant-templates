# Vagrant Developer's Toolbox

This repository contains a set of Vagrant boxes for common development languages (PHP, Ruby, Node.js) and databases (MySQL, MongoDB).

## How to use

Every directory, except the common `ansible`, contains a template box. To make you own box:

 - copy the directory with the box you need,
 - copy the role you need from the shared `ansible/roles` to `[yourbox]/ansible/roles`,
 - customize the box and playbook settings,
 - run `vagrant up` and start coding.

A sample project directory can be structured like:

 ~~~
 /home/[username]/Projects/my-project
    |-build
    |-config
    |-db
    |---dev
    |---prod
    |-ansible
    |---roles
    |-----[roles dirs]
    |---playbook.yml
    |-shell
    |---bootstrap.sh
    |-src
    |---[your app code]
    |-tests
    |-webroot
    |-Vagrantfile
 ~~~

## Requirements

 - [Ansible 2.x](https://www.ansible.com/get-started) and related dependencies
 - [Vagrant 1.8.x](https://www.vagrantup.com/) and related dependencies
 - [VirtualBox](https://www.virtualbox.org/)

## Vagrant Tips

Download VirtualBox guest additions from: `http://download.virtualbox.org/virtualbox/x.x.x/VBoxGuestAdditions_x.x.x.iso`

Disable Guest additions in your box with:

~~~ ruby
config.vbguest.auto_update = false
config.vbguest.no_install = true
config.vbguest.no_remote = true
~~~

## Useful Vagrant plugins

 - [vagrant-hostmanager](https://github.com/devopsgroup-io/vagrant-hostmanager): manages the `/etc/hosts` file on guest machines (and optionally the host)
 - [vagrant-dns](https://github.com/BerlinVagrant/vagrant-dns): allows you to configure a dns-server managing a development subdomain
 - vagrant-cachier: caches package managers files
 - vagrant-remove-old-box-versions
