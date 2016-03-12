#!/bin/bash

# check to see that virtualbox is installed

# check to see that vagrant is installed 

# Install the saltstack plugin first
#vagrant plugin install vagrant-salt

# Install the provided Gem / plugin - this one supports the --local flag
vagrant plugin install support/vagrant-salt-0.4.0.gem

vagrant plugin list
# Start the environment
# vagrant up

# adding comment 
