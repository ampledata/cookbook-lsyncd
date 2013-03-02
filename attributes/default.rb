#!/usr/bin/env ruby
# Attributes for lsyncd Cookbook.
#
# Cookbook Name:: lsyncd
# Author:: Greg Albrecht <gba@splunk.com>
# Copyright:: Copyright 2012 Splunk, Inc.
# License:: Apache License 2.0
#


# e.g. /etc/lsyncd.conf.lua
default['lsyncd']['conf'] = ::File.join(
  ::File::SEPARATOR, 'etc', 'lsyncd.conf.lua')

default['lsyncd']['src']['repo'] = 'https://github.com/axkibe/lsyncd.git'
default['lsyncd']['src']['revision'] = 'c890726c6e37c1048e6fd096c9c6012da70e374d'

# e.g. /usr/src/
default['lsyncd']['src']['base'] = ::File.join(::File::SEPARATOR, 'usr', 'src')

# e.g. /usr/src/lsyncd
default['lsyncd']['src']['dest'] = ::File.join(
  node['lsyncd']['src']['base'],
  'lsyncd')

default['lsyncd']['src']['prereqs']['packages'] = [
  'asciidoc', 'autoconf', 'build-essential', 'liblua5.1-0-dev', 'lua5.1', 'git']

# e.g. /usr/local/bin/lsyncd
default['lsyncd']['bin'] = ::File.join(
  ::File::SEPARATOR, 'usr', 'local', 'bin', 'lsyncd')

default['lsyncd']['options'] = '--nodaemon'

# e.g. /usr/local/bin/lsyncd /etc/lsyncd.conf.lua
default['lsyncd']['cmd'] = [
  default['lsyncd']['bin'], default['lsyncd']['options'], default['lsyncd']['conf']].join(' ')
