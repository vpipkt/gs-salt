/dev/xvdc:
  blockdev.formatted:
    - fs_type: ext4

/dev/xvdd:
  blockdev.formatted:
    - fs_type: ext4

/dev/xvde:
  blockdev.formatted:
    - fs_type: ext4

/dev/xvdf:
  blockdev.formatted:
    - fs_type: ext4

/data1:
  mount.mounted:
    - device: /dev/xvdc
    - fstype: ext4
    - mkmnt: True
    - opts:
      - defaults

/data2:
  mount.mounted:
    - device: /dev/xvdd
    - fstype: ext4
    - mkmnt: True
    - opts:
      - defaults

/data3:
  mount.mounted:
    - device: /dev/xvde
    - fstype: ext4
    - mkmnt: True
    - opts:
      - defaults

/data4:
  mount.mounted:
    - device: /dev/xvdf
    - fstype: ext4
    - mkmnt: True
    - opts:
      - defaults

