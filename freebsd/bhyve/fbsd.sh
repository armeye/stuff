#! /bin/s
j
bhyveload -m 256M -d fbsd.img fbsd

bhyve -AI -H -P -W \
      -s 0:0,hostbridge \
      -s 1:0,lpc \
      -s 2:0,virtio-blk,./fbsd.img \
      -s 4:0,virtio-rnd \
      -s 4:1,virtio-net,tap0 \
      -l com1,/dev/nmdm0A -m 256M fbsd
