#!/bin/bash

# kill the existing minion
#sudo killall -r [\s\w/]*salt-minion

#install Salt Minion
curl -o install_salt.sh -L https://bootstrap.saltstack.com
sudo sh install_salt.sh git v2015.8.0rc2

# Run salt-call with --local flag  ... -l debug for debug output
# Salt will now provision the rest
sudo salt-call --local state.highstate

sudo salt-call --versions-report
