puppet3-server:
  pkg.installed

/etc/puppet/puppet.conf:
  file.managed:
    - source: salt://puppet/server-puppet.conf

/etc/puppet/fileserver.conf:
  file.managed:
    - source: salt://puppet/server-fileserver.conf

puppetmaster-service:
  service.running:
    - name: puppetmaster
    - enable: True

puppet-service:
  service.running:
    - name: puppet
    - enable: True
