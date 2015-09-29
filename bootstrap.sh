#!/bin/bash

# kill the existing minion
sudo killall -r [\s\w/]*salt-minion

# Run salt-call with --local flag  ... -l debug for debug output
# Salt will now provision the rest
sudo salt-call --local state.highstate

sudo salt-call --versions-report
