puppet3:
  pkg.installed

/etc/puppet/puppet.conf:
  file.managed:
    - source: salt://puppet/client/puppet.conf

puppet-service:
  service.running:
    - name: puppet
    - enable: True
