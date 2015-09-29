# vi: set ft=ruby :

# Vagrant.cole API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	config.vm.box = "precise64"
	config.vm.box_url = "http://files.vagrantup.com/precise64.box"
	#config.vm.box = "matthardcastle/centos-7-minimal-salt"
	#config.vm.box = "rancherio/rancheros"
	#config.vm.box = "geerlingguy/centos7"
	config.vm.network "private_network", type: "dhcp"
	config.vm.provider :virtualbox do |vb|
	    vb.customize ["modifyvm", :id, "--memory", 512]
	    vb.customize ["modifyvm", :id, "--vtxvpid", "off"]
	    vb.customize ["modifyvm", :id, "--cpus", "1"]
  end

	# Synched folders
	# provided for master-less salt control
  config.vm.synced_folder "srv/", "/srv/"

	# Salt provisioning
	# Using https://github.com/saltstack/salty-vagrant plugin
	#
	# To check vagrant plugins, type: %vagrant plugin list
	#
	# To install salty-vagrant, type: %vagrant plugin install vagrant-salt
	#
	# This plugin is deprecated, but it is the only one that supports masterless
	# functioning, that is, it passes the --local option when envoking salt-call commands
	config.vm.provision :salt do |salt|
		salt.minion_config = "srv/minion"
		salt.run_highstate = false
		# salt.masterless = true
	end

	# bootstrap to fix things right now.  Version of salt installed by Vagrant is too old
	config.vm.provision "shell", path: "bootstrap.sh"
	config.vm.network "forwarded_port", guest: 3000, host: 3200
end
