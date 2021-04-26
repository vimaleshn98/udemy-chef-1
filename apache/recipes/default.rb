#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2021 The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end


file 'var/www/html/index.html' do
  content '<h1> Hello Chef </h1>'
end

service 'httpd' do
  action [:enable, :start]
end
