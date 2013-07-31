#!/usr/bin/env ruby
# Installs prerequisite pacakges for lsyncd.
#
# Recipe:: prereq
# Cookbook Name:: lsyncd
# Author:: Greg Albrecht <gba@gregalbrecht.com>
# Copyright:: Copyright 2012 Greg Albrecht
# License:: Apache License 2.0
#

package 'asciidoc' do
  options '--no-install-recommends'
end

node['lsyncd']['src']['prereqs']['packages'].each do |pkg|
  package pkg
end
