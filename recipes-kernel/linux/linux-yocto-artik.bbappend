FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

include recipes-kernel/linux/linux-yocto-snappy_3.10.inc

SRC_URI += " \
	file://0031-snappy-artik-remove-kvfree-from-apparmor.patch \
	file://0032-snappy-artik-fix-compiling-error.patch \
	file://0033-artik-artik10-add-snapcraft-and-wifi-firmware-blob.patch \
    "
