#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2020 The Authors, All Rights Reserved.
#
package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
   content "<h1>hello,world!</h1>
   HOSTNAME: #{node['hostname']}
   IPADDRESS: #{node['ipaddress']}
"
end

service 'httpd' do
 action [ :enable, :start ]
end
