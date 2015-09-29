mongodb:
  use_ppa: True
  package_name: mongodb-org
  mongo_directory: /vagrant/tmp/mongodb
  # Had to change 3.1 to stable - 3.1 was not specific enough.  There's another
  # level to apt-get such that 3.1.1 or something to that effect needed to be
  # specified
  release: stable
  repo_component: multiverse
  manage_replica_set: False
  reconfigure_replica_set: False
  # mongod process is either configsvr or shardsvr - pick one
  config_svr: False
  shard_svr: True
  storage_engine: wiredTiger
  # will preserve data outside the vm
  db_path: /vagrant/tmp/mongodb/data
  # will destroy logs when vagrant vm destroyed
  # maps to logrotate expectations
  log_path: /var/log/mongodb
  #conf_path: /vagrant/mongodb/conf/mongodb.conf
  log_append: True
  rest: True
  # Since I'm writing the files to the /vagrant mount, the username and pwd
  # are as follows
  user: vagrant
  group: vagrant

mongos:
  use_ppa: True
  package_name: mongodb-org-mongos
  # will destroy logs when vagrant vm destroyed
  # maps to logrotate expectations
  log_file: /var/log/monogdb/mongos.log
  #conf_path: /vagrant/mongodb/conf/mongodb.conf
  config_svrs: "cfg1.local:27019,cfg2.local:27019,cfg3.local:27019"
