# vi: set ft=ruby :

Vagrant.configure("2") do |config|
	config.vm.box = "precise64"
	#config.vm.box_url = "http://files.vagrantup.com/precise64.box"
	#config.vm.box = "matthardcastle/centos-7-minimal-salt"
	#config.vm.box = "rancherio/rancheros"
	#config.vm.box = "geerlingguy/centos7"
	config.vm.network "private_network", type: "dhcp"
	config.vm.provider :virtualbox do |vb|
	    vb.customize ["modifyvm", :id, "--memory", 512]
	    vb.customize ["modifyvm", :id, "--vtxvpid", "off"]
	    vb.customize ["modifyvm", :id, "--cpus", "1"]
  	end

	#Synched folders
	config.vm.synced_folder "/home/cbates/dev/project-mayhem/madhouse/", "/app/"

	# provided for master-less salt control
        config.vm.synced_folder "srv/", "/srv/"

	# Salt provisioning
	config.vm.provision :salt do |salt|
		salt.minion_config = "srv/minion"
		salt.run_highstate = true
	end
end

# Not needed right now since the hostOnly network is exposing the guestVM
#Host port forwarding
#  Vagrant::Config.run do |config|
#  config.vm.forward_port 3200, 3200
#end

