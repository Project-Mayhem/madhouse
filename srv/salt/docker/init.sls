# From https://yajdb.wordpress.com/2015/02/25/installing-docker-on-saltstack-minions-with-states
docker.io:
  pkg.installed

docker-py:
  pkg.installed
  #:
  #- name: python-pip
  #pip.installed:
  #  - require:
  #    - pkg: python-pip
