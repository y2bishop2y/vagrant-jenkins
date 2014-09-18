# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 1.5.0"

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"


JENKINS_NODE_HOSTNAME = "vimana.jenkins"
JENKINS_NODE_NAME     = "jenkins"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "base"
  config.omnibus.chef_version = :latest


  config.vm.define 'jenkins' do |jenkins|


    jenkins.vm.hostname = JENKINS_NODE_HOSTNAME
    jenkins.vm.box      = "opscode-ubuntu-14.04"


    jenkins.vm.network  "private_network", ip: "33.33.37.10"

    jenkins.vm.provider :virtualbox do |vb|
      vb.gui = true
      vb.customize ['modifyvm', :id, '--memory', '8192']
      vb.customize ['modifyvm', :id, '--name',   JENKINS_NODE_NAME ]
    end
    

    jenkins.vm.provision "chef_solo" do |chef|
      chef.cookbooks_path = ["chef/site-cookbooks", "chef/cookbooks"]
      chef.roles_path     = "chef/roles"
      chef.data_bags_path = "chef/data_bags"
      chef.run_list = [ "recipe[vimana::jenkins]"  ]
      

      #==========================
      # Attributes
      #--------------------------
      chef.json = {
        "jenkins" => {
          "master" => {
            "install_method" => "war"
          }
        }
      }


    end
  end
end

