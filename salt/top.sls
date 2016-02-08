base:
  '*':
    - hostsfile
    - hostsfile.hostname
  head:
    - mounts.head
    - puppet.server
    - puppet.files
  'worker*':
    - mounts.worker
    - puppet.client
