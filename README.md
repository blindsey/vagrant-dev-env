vagrant-dev-env
===============

A vagrant development setup for 12.04 LTS (precise64) using chef with postgres, ruby 2.0.0, rails 3.2.x, and redis.

Installation
------------

1. Download and install VirtualBox [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)
2. Download and install Vagrant [http://downloads.vagrantup.com/](http://downloads.vagrantup.com/)
3. Add the VM

```
$ vagrant box add precise64 http://files.vagrantup.com/precise64.box
$ cd vagrant-dev-env
$ vagrant up
$ vagrant ssh
```
Note: this assumes your code is located in ~/Projectx/groupx
