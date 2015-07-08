#
# Cookbook Name:: umlet
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'windows'

windows_zipfile node['umlet']['out_path'] do
  source "http://www.umlet.com/umlet_#{node['umlet']['version'].gsub('.','_')}/umlet_#{node['umlet']['version']}.zip"
  action :unzip
  not_if {::Dir.exists?(node['umlet']['out_path'])}
end