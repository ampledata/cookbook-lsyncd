#!/usr/bin/env ruby
# Builds lsyncd from source.
#
# Recipe:: build
# Cookbook Name:: lsyncd
# Author:: Greg Albrecht <gba@splunk.com>
# Copyright:: Copyright 2012 Splunk, Inc.
# License:: Apache License 2.0
#


# Ensure the src dest exists before we sync lsyncd from github:
directory(node['lsyncd']['src']['dest']).run_action(:create)


git 'lsyncd src sync' do
  repo node['lsyncd']['src']['repo']
  destination node['lsyncd']['src']['dest']
  revision node['lsyncd']['src']['revision']
end


execute 'lsyncd src autogen' do
  action :nothing
  command './autogen.sh'
  cwd node['lsyncd']['src']['dest']
  subscribes(:run, resources(:git => 'lsyncd src sync'))
end


execute 'lsyncd src configure' do
  action :nothing
  command './configure'
  cwd node['lsyncd']['src']['dest']
  subscribes(:run, resources(:execute => 'lsyncd src autogen'))
end


execute 'lsyncd src make' do
  action :nothing
  command 'make'
  cwd node['lsyncd']['src']['dest']
  subscribes(:run, resources(:execute => 'lsyncd src configure'))
end
