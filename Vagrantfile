# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
#------------------------Server---------------------------------
	config.vm.define "pupserver", primary: true do |pupserver|
  		pupserver.vm.box = "centos/7"
  		pupserver.vm.network "private_network", ip: "192.168.30.30"
  		pupserver.vm.hostname = "serverpuppet"
  		pupserver.vm.provider "virtualbox" do |vm1|
    			vm1.cpus = 2
    			vm1.memory = "4096"
  		end
	config.vm.provision "shell", path: "./source/provision.sh"
	#config.vm.provision "puppet" do |puppet|
        #              puppet.manifeststs_path = 'runpuppet/manifests'  
        #              puppet.module_path = 'runpuppet/'
        #end
  	config.vm.provision "shell", inline: "echo The Puppet-SERVER is DONE!"
	end
#-----------------------------------------------------------------------
#------------------------------Node-------------------------------------
	config.vm.define "pupnode", primary: true do |pupnode|
		pupnode.vm.box = "centos/7"
                pupnode.vm.network "private_network", ip: "192.168.30.35"
                pupnode.vm.hostname = "clientpuppet"
                pupnode.vm.provider "virtualbox" do |vm2|
                        vm2.cpus = 1
                        vm2.memory = "1024"
                end
	config.vm.provision "shell", path: "./source/provision.sh"
	config.vm.provision "shell", inline: "echo The Puppet-NODE is DONE!"
	end
#-----------------------------------------------------------------------
end
