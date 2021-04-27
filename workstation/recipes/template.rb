template '/etc/motd' do
    source 'motd.erb'
    variables(:ip => node['ipaddress'])
    action :create
end 
