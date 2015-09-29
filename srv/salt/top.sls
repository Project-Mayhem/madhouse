# https://github.com/kstaken/salt-nodejs-mongo-example/blob/master/roots/pillar/config.sls
base:
  '*':
    - docker
    - git
    - curl
    - mongodb
    - nodejs
    - forever
    - clusterMgr
    
