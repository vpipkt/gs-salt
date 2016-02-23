puppet3:
  pkg.installed

puppet-service:
  service.dead:
    - name: puppet
    - enable: False

/etc/puppet/puppet.conf:
  file.managed:
    - source: salt://puppet/client/puppet.conf

