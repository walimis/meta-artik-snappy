SUMMARY = "The Artik gadget snap"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"

SRC_URI = " \
  file://gadget.tar.bz2 \
"
include recipes-bsp/gadget-snap/gadget-snap.inc
