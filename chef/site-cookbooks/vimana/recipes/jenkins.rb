# -*- mode: ruby -*-
# vi: set ft=ruby :



include_recipe 'apt'
include_recipe 'build-essential'
include_recipe 'emacs'
include_recipe 'git'

include_recipe 'virtualbox'
include_recipe 'vagrant'


include_recipe 'jenkins::java'
include_recipe 'jenkins::master'

# include_recipe 'vimana::gnome'
# include_recipe 'vimana::vnc'



# sudo apt-get install build-essential linux-headers-`uname -r`
# 
# vagrant box add  opscode-ubuntu-14.04 http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-14.04_chef-provisionerless.box
# vagrant box add precise64 http://files.vagrantup.com/precise64.box


# apt_package 'linux-headers-3.13.0-24-generic' do
#  action :install
# end

# apt_package 'virtualbox' do
#   action :install
# end



#  apt_package 'vagrant' do
#   action :install
# end 

#=========================
#-------------------------
# apt_package 'virtualbox-guest-additions-iso' do
#   action :install
# end

#=========================
#-------------------------
jenkins_user 'builder' do
   full_name 'Vimana Builder'
   email     'builder@systeminsights.com'

   action :create
end


#=========================
# Plugins
#-------------------------
jenkins_plugin 'packer' do
  action :install 
end


# jenkins_plugin 'vagrant' do
#   action :install 
# end


jenkins_plugin 'github' do
  action :install 
end


#=========================
# JOBS
#-------------------------
# jenkins_job 'test-build' do
#    action :create
# end
