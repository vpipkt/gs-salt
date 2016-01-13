base:
  '*':
    - hostsfile
    - hostsfile.hostname
  head:
    - mounts.head
  'worker*':
    - mounts.worker
