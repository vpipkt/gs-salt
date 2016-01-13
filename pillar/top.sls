base:
  '*':
    - node
  'head':
    - head
  'worker[1-3]':
    - zookeeper
  'worker*':
    - worker
