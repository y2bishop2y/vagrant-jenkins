

#=========================
# Install a VNC server
#-------------------------
apt_package 'tightvncserver' do
  action :install  
end


apt_package'xfce4' do
  action :install  
end


apt_package 'xfce4-goodies' do
  action :install  
end




