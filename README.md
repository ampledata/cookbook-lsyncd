Description
===========
Installs and configures the [lsyncd](https://github.com/axkibe/lsyncd)
daemon.

Requirements
============

1. Ubuntu & Lua build tools.
2. [supervisord](https://github.com/coderanger/chef-supervisor) Cookbook.

Attributes
==========

* `['lsyncd']['src']['repo']`: GIT repository from which to check out lsyncd
  source.
* `['lsyncd']['src']['revision']`: GIT revision hash to check out.
* `['lsyncd']['src']['base']`: Destination for lsyncd source tree directory.
* `['lsyncd']['src']['dest']`: Destination directory for lsyncd source.
* `['lsyncd']['conf']`: Configuration file name.
* `['lsyncd']['src']['prereqs']['packages']`: Prerequisite packages for
  building lsyncd.
* `['lsyncd']['bin']`: Destination path for lsyncd binary.
* `['lsyncd']['options']`: Extra options to pass to lsyncd through supervisord.
* `['lsyncd']['cmd']`: Command arguments to pass to supervisord.

Usage
=====
Add this Recipe to your Run List. You will likely want to add `apt` and
`build-essential` to the run list, but they are not required.

License
=======
Apache License 2.0

Author
======
Greg Albrecht <gba@gregalbrecht.com>

Copyright
=========
Copyright 2012 Greg Albrecht
