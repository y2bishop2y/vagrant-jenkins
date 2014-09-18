

#=========================
# Install a X11 / GUI  Desktop
#-------------------------
# apt-get 'ubuntu-desktop' do
#   action :install
# end 


apt_package 'xorg' do
  action :install
end 

apt_package 'gnome-core' do
  action :install
end 

apt_package 'gnome-system-tools' do
  action :install
end 

apt_package 'gnome-app-install' do
  action :install
end 
