##Client recipe for PC-MONITOR Linux agent.
##see docs for config and server at http://www.mobilepcmonitor.com/
#
#
#Get and Install the Agent depending on the Host Platform
arch = node['pcmonitor']['arch']

case node[:platform]
when "debian", "ubuntu"
  remote_file "/tmp/pcmonitor_#{arch}.deb" do
    source "http://www.mobilepcmonitor.com/download/pcmonitor_#{arch}.deb"
    mode 0644
  end
  dpkg_package "pcmonitor-agent" do
    source "/tmp/pcmonitor_#{arch}.deb"
    action :install
  end
else
remote_file "/tmp/pcmonitor_#{arch}.rpm" do
    source "http://www.mobilepcmonitor.com/download/pcmonitor_#{arch}.rpm"
    mode 0644
    action :create
  end
  rpm_package "pcmonitor-agent" do
    source "/tmp/pcmonitor_#{arch}.rpm"
    action :install
  end
end

##Define the pc-monitor service
service "pcmonitor" do
  supports :status => true, :restart => true
end

##Get username and password from databag
agent_creds = data_bag_item("pc-monitor", "creds")

##Create Config Template and restart onb changes
template "/etc/pcmonitor/config.xml" do
  source "config.xml.erb"
  mode 0440
  owner "root"
  group "root"
  variables({
     :agent_user => agent_creds["username"],
     :agent_password => agent_creds["password"]
  })
  notifies :restart, resources(:service => "pcmonitor")
end
