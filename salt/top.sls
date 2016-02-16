base:
  '*':
    - hostsfile
    - hostsfile.hostname
  head:
    - mounts.head
    - puppet.server
  'worker*':
    - mounts.worker
    - puppet.client
