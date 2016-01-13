puppet-server:
  pkg.installed

/etc/puppet/puppet.conf:
  file.managed:
    - source: salt://puppet/server-puppet.conf

puppetmaster-service:
  service.running:
    - name: puppetmaster
    - enable: True

puppet-service:
  service.running:
    - name: puppet
    - enable: True
