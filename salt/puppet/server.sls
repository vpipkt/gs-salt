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

/etc/puppet/hieradata/default.yaml:
  file.managed:
    - source: salt://puppet/server/hieradata/default.yaml
    - user: puppet
    - group: puppet

/etc/puppet/hieradata/classes.yaml:
  file.managed:
    - source: salt://puppet/server/hieradata/classes.yaml
    - user: puppet
    - group: puppet

/etc/puppet/hieradata/hosts/head.yaml:
  file.managed:
    - source: salt://puppet/server/hieradata/hosts/head.yaml
    - user: puppet
    - group: puppet

/etc/puppet/hieradata/hosts/worker1.yaml:
  file.managed:
    - source: salt://puppet/server/hieradata/hosts/worker1.yaml
    - user: puppet
    - group: puppet

/etc/puppet/hieradata/hosts/worker2.yaml:
  file.managed:
    - source: salt://puppet/server/hieradata/hosts/worker2.yaml
    - user: puppet
    - group: puppet

/etc/puppet/hieradata/hosts/worker3.yaml:
  file.managed:
    - source: salt://puppet/server/hieradata/hosts/worker3.yaml
    - user: puppet
    - group: puppet

/etc/puppet/hieradata/hosts/worker4.yaml:
  file.managed:
    - source: salt://puppet/server/hieradata/hosts/worker4.yaml
    - user: puppet
    - group: puppet

s3-puppet-modules:
  archive.extracted:
    - name: /etc/puppet/
    - source: s3://geoint-data/bootstrap/puppet-modules.tgz
    - source_hash: md5=078951bf87b304bc9b7f9f2af7f3012f
    - archive_format: tar
    - if_missing: /etc/puppet/modules/java
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
