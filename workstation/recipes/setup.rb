package 'tree' do
 action :install
end
package 'ntp' do
 action :install
end
ip = node['ipaddress']
host =node['hostname']
# print apple count
apple = 4
puts " i have #{apple } apples"



package 'git' do
 action :install
end
file '/etc/motd' do
 content "Property of azure user 
      IP-address: #{ip}
      Disk-size: #{node['memory']['total']}
	HostName: #{host}
	CPU: #{node['cpu']['0']['mhz']}
     "
 owner 'root'
 group 'root'
end
service 'ntpd' do
 action [:enable, :start]
end
