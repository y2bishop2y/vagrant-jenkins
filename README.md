
Chef-Jenkins-Vagrant
====================


Sites
===============

https://github.com/opscode-cookbooks/jenkins


https://wiki.jenkins-ci.org/display/JENKINS/Vagrant+Plugin


Chef Librarian
===============
http://tumblr.nrako.com/post/22320729770/vagrant-chef-librarian
https://github.com/applicationsonline/librarian-chef


https://github.com/berkshelf/vagrant-berkshelf

ChefDK
 http://getchef.com/downloads/chef-dk

Basic Steps
===============


Jenkins Plugins
===============
https://wiki.jenkins-ci.org/display/JENKINS/Packer+Plugin

https://wiki.jenkins-ci.org/display/JENKINS/Amazon+EC2+Plugin


Chef Librarian
===============

librarian-chef install 


https://www.digitalocean.com/community/tutorials/how-to-install-vagrant-on-a-vps-running-ubuntu-12-04


SETUP
===============

User Chef VirtualBox cookbook
https://github.com/jtimberman/virtualbox-cookbook


sudo dpkg-reconfigure virtualbox-dkms
sudo dpkg-reconfigure virtualbox


Install CPU-Checker 
http://askubuntu.com/questions/103965/how-to-determine-if-cpu-vt-extensions-enabled-in-bios

sudo apt-get install cpu-checker

Run 
sudo kvm-ok

Install KVM
https://help.ubuntu.com/community/KVM/Installation



Ah, I solved it now.
===============
I followed these setups
http://www.youtube.com/watch?v=UVqbdrDB7aU
and
http://www.youtube.com/watch?v=2mknx7_5-qY
which shows where to modify the BIOS so that VT-X is enabled. Now I'm able to create virtual images that's 64 bit and now the installation is running :-)

(UPDATE: which is what QIII (http://ubuntuforums.org/member.php?u=628170) also stated just before [as I notice now])



