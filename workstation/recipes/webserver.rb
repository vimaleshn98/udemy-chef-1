package 'httpd' do
  action :install
end
ip = node['ipaddress']
host =node['hostname']
flag = false
template 'var/www/html/index.html' do
  source 'index.html.erb'
  variables({
   :ip => node['ipaddress'], 
   :host => host, 
   :flag => flag
  })
  action :create
end

service 'httpd' do
  action [:enable, :start] 
end
