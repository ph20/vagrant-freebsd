# Vagrant-FreeBSD

# Description

This is a Vagrant plugin for FreeBSD.
This plugin supports mounting the vagrant directory on FreeBSD.
Now it supports vmware_desktop provider only.

## Installation

Install via Vagrant

```zsh
$ vagrant plugin install vagrant-freebsd
```

To install from source code, first build via `rake` and then:

```zsh
$ vagrant plugin install pkg/vagrant-freebsd-x.x.x.gem
```


## Credits

Inspired and based on https://github.com/tnarik/vagrant-solaris10/