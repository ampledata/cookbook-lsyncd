#!/usr/bin/env ruby
# Installs lsyncd.
#
# Recipe:: install
# Cookbook Name:: lsyncd
# Author:: Greg Albrecht <gba@gregalbrecht.com>
# Copyright:: Copyright 2012 Greg Albrecht
# License:: Apache License 2.0
#


execute 'lsyncd src make install' do
  action :nothing
  command 'make install'
  cwd node['lsyncd']['src']['dest']
  subscribes(:run, resources(:execute => 'lsyncd src make'))
end
