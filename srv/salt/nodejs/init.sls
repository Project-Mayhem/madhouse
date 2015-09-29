# What is this??
screen:
  pkg.installed

# install any javascript libs needed for your app as specified in your
# package.json file

nodejs:
    pkgrepo:
    - managed
    - ppa: chris-lea/node.js
    - require_in:
        - pkg: nodejs
    pkg:
      - installed

# Config that installs node then tries to start up the resident app
# nodejs:
#    pkgrepo:
#    - managed
#    - ppa: chris-lea/node.js
#    - require_in:
#        - pkg: nodejs
#    pkg:
#        - installed
#    service:
#        - running
#        - require:
#            - npm.bootstrap: {{ pillar["app_path"] }}
#        - watch:
#            - file: /etc/init/nodejs.conf

#/etc/init/nodejs.conf:
#    file.managed:
#      - source: salt://nodejs/nodejs.conf
#      - user: root
#      - group: root
#      - mode: 644
#      - template: jinja
#      - require:
#        - pkg: nodejs
#        - npm.installed: forever
