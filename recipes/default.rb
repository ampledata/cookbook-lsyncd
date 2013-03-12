#!/usr/bin/env ruby
# Builds, installs and configures lsyncd.
#
# Recipe:: default
# Cookbook Name:: lsyncd
# Author:: Greg Albrecht <gba@gregalbrecht.com>
# Copyright:: Copyright 2012 Greg Albrecht
# License:: Apache License 2.0
#


include_recipe 'lsyncd::prereq'
include_recipe 'lsyncd::build'
include_recipe 'lsyncd::install'
include_recipe 'lsyncd::run'
