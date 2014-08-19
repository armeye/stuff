
.include "fbsdaconf.txt"

WORKDIR=work

template_base:
	sed -e "s/%%ident%%/${KERNCONF_IDENT}/" -e \
	"s/%%cpu%%/${KERNCONF_CPU}/" templates/template_BASE > ${WORKDIR}/template_0

template_dtrace: template_base
	echo "options KDTRACE_HOOKS" > ${WORKDIR}/template_DTRACE
	echo "MODULES_OVERRIDE+=cyclic dtrace" > ${WORKDIR}/template_MAKE_CONF_DTRACE 

template_scsi_base: template_base
	cp templates/template_SCSI_BASE ${WORKDIR}

template_ahci: template_scsi_base
	 echo "device ahci" > ${WORKDIR}/template_AHCI

template_usb: template_scsi_base
	cp templates/template_USB ${WORKDIR}

template_usb_hid: template_usb template_keyboard
	echo "MODULES_OVERRIDE+= usb/ukbd usb/ums usb/uhid" > ${WORKDIR}/template_MAKE_CONF_USBHID

template_wlan: template_base
	cp templates/template_WLAN ${WORKDIR}

template_ath: template_wlan
	cp templates/template_ATH ${WORKDIR}

template_cdrom: template_scsi_base
	echo "device cd" > ${WORKDIR}/template_CDROM

template_atkbd: template_keyboard
	cp templates/template_ATKBD ${WORKDIR}

template_psm: template_atkbd
	echo "device psm" > ${WORKDIR}/template_PSM

template_vt: template_base
	echo "device vt" > ${WORKDIR}/template_VT

template_keyboard: template_base
	cp templates/template_KEYBOARD ${WORKDIR}

template_mii: template_base
	echo "device mii" > ${WORKDIR}/template_MII

template_alc: template_mii
	cp templates/template_ALC ${WORKDIR}

template_netgraph: template_base
	echo "MODULES_OVERRIDE+=netgraph/netgraph netgraph/socket" > ${WORKDIR}/template_MAKE_CONF_NETGRAPH

template_bluetooth: template_netgraph
	echo "MODULES_OVERRIDE+=netgraph/bluetooth" > ${WORKDIR}/template_MAKE_CONF_BLUETOOTH

template_ucom: template_usb
	echo "MODULES_OVERRIDE+=usb/ucom" > ${WORKDIR}/template_MAKE_CONF_UCOM

template_ata: template_scsi_base
	echo "device ata" > ${WORKDIR}/template_ATA

template_atpc_hid: template_atkbd template_psm template_vt

template_u3g: template_ucom
	echo "MODULES_OVERRIDE+=usb/u3g" > ${WORKDIR}/template_MAKE_CONF_U3G

template_uplcom: template_ucom
	echo "MODULES_OVERRIDE+=usb/uplcom" > ${WORKDIR}/template_MAKE_CONF_UPLCOM

template_i2c: template_base
	echo "MODULES_OVERRIDE+=i2c/iic i2c/iicbus i2c/iicbb" > ${WORKDIR}/template_MAKE_CONF_I2C

template_vga: template_vt
	echo "device vt_vga" > ${WORKDIR}/template_VGA

template_drm2: template_i2c template_vga
	echo "MODULES_OVERRIDE+=drm2/drm2" > ${WORKDIR}/template_MAKE_CONF_DRM2

template_i915: template_drm2
	echo "MODULES_OVERRIDE+=drm2/i915kms" > ${WORKDIR}/template_MAKE_CONF_i915

make_conf: driver_targets
	cat ${WORKDIR}/template_MAKE_CONF_* > ${WORKDIR}/make.conf
	rm  ${WORKDIR}/template_MAKE_CONF_*

kernconf: make_conf
	cat ${WORKDIR}/template_* > ${WORKDIR}/${KERNCONF_IDENT}
	rm ${WORKDIR}/template_*

clean:
	rm -f ${WORKDIR}/template_*
