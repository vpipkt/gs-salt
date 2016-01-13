/dev/xvdf:
  blockdev.formatted:
    - fs_type: ext4

/data1:
  mount.mounted:
    - device: /dev/xvdf
    - fstype: ext4
    - mkmnt: True
    - opts:
      - defaults
