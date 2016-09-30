FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

include recipes-kernel/linux/linux-yocto-snappy_3.10.inc

SRC_URI += " \
	file://0001-snappy-artik-remove-kvfree-from-apparmor.patch \
	file://0002-snappy-artik-fix-compiling-error.patch \
	file://0003-snappy-artik-add-def-to-fix-compiling-error.patch \
	file://0004-artik-artik10-add-snapcraft-and-wifi-firmware-blob.patch \
    "
