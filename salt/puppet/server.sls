puppet3-server:
  pkg.installed

/etc/puppet/puppet.conf:
  file.managed:
    - source: salt://puppet/server/puppet.conf
    - user: puppet
    - group: puppet

/etc/puppet/fileserver.conf:
  file.managed:
    - source: salt://puppet/server/fileserver.conf
    - user: puppet
    - group: puppet

/etc/puppet/manifests:
  file.directory:
    - user: puppet
    - group: puppet

/etc/puppet/manifests/site.pp:
  file.managed:
    - source: salt://puppet/server/manifests/site.pp
    - user: puppet
    - group: puppet

/etc/puppet/hiera.yaml:
  file.managed:
    - source: salt://puppet/server/hiera.yaml
    - user: puppet
    - group: puppet

/etc/puppet/hieradata:
  file.directory:
    - user: puppet
    - group: puppet

puppetmaster-service:
  service.running:
    - name: puppetmaster
    - enable: True

puppet-service:
  service.running:
    - name: puppet
    - enable: True
