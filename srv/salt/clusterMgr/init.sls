npminstall:
  cmd.run:
    - name: npm install
    - cwd: /vagrant/clusterMgr/src/
    - require:
      - pkg: nodejs


bowerinstall:
    cmd.run:
      - name: npm install bower
      - cwd:  /vagrant/clusterMgr/src/
      - require:
          - pkg: nodejs
          - pkg: npminstall

# TODO
#bower install --save jquery
#bower install --save bootstrap
#bower install --save requirejs
#bower install --save angular
#npm install sails-generate-bower

# TODO
# set path /node_modules/.bin to put bower and sails on the path
