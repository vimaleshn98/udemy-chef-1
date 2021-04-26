package 'httpd' do
  action :install
end
ip = node['ipaddress']
host =node['hostname']

file 'var/www/html/index.html' do
  content "<h1> Hello Chef with #{ip} and host: #{host} </h1>"
end

service 'httpd' do
  action [:enable, :start] 
end
