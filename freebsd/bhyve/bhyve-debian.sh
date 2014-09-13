grub-bhyve -m debian.map -r hd0,msdos1 -M 256M debian

bhyve -AI -H -P -W \
      -s 0:0,amd_hostbridge \
      -s 1:0,lpc \
      -s 4:0,virtio-rnd \
      -s 3:0,virtio-net,tap1 \
      -s 2:0,virtio-blk,debian.img \
      -l com1,/dev/nmdm1A -m 256M debian
