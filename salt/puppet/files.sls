/etc/puppet/files:
  file.directory:
  - makedirs: True
  - user: puppet
  - group: puppet

{% set jdk_archive = 'jdk-7u79-linux-x64.tar.gz' %}
{% set jdk_md5 = '9222e097e624800fdd9bfb568169ccad' %}
{% set jdk_url = 'http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.tar.gz' %}

/etc/puppet/files/{{jdk_archive}}:
  cmd.run:
  - name: |
      cd /etc/puppet/files
      curl -sS -b "oraclelicense=accept-securebackup-cookie" -L -o {{jdk_archive}} {{jdk_url}}
      md5=($(md5sum {{jdk_archive}})) && [ $md5 = {{jdk_md5}} ] || (rm {{jdk_archive}} && false)
  - creates: /etc/puppet/files/{{jdk_archive}}
  file.managed:
  - user: puppet
  - group: puppet

/etc/puppet/files/accumulo-1.6.4-bin.tar.gz:
  file.managed:
  - source: https://archive.apache.org/dist/accumulo/1.6.4/accumulo-1.6.4-bin.tar.gz
  - source_hash: md5=530dfe488d5c2ee415b514ce72baa691
  - user: puppet
  - group: puppet

