Snappy Layer for Artik BSP
==========================

Prepare enviroment
------------------

- On ubuntu 14.04

If you're using ubuntu 14.04, you need to build snapcraft first.
Please follow the below document to add snapcraft.
https://github.com/walimis/meta-snappy-tools/blob/master/README.md

- On ubuntu 16.04

Install snappy tools

```
$ sudo apt-get update
$ sudo apt-get install snapd snapcraft
```


Get poky and snappy common layer
--------------------------------

- Clone poky

```
$ apt-get install build-essential chrpath texinfo diffstat python-minimal
$ export POKY=<path>
$ git clone git://git.yoctoproject.org/poky
$ cd poky
$ git checkout -b krogoth origin/krogoth (or simply git checkout krogoth)
$ cd ..
```

- Clone snappy layer

```
$ git clone https://github.com/walimis/meta-snappy.git

```

Get artik bsp as example
------------------------

- Clone artik bsp layer

```
$ git clone https://github.com/resin-os/meta-artik
```

- Clone snappy layer for artik bsp

```
$ git clone https://github.com/walimis/meta-artik-snappy.git
```


Build snappy image
------------------

- Prepare bitbake

```
$ cd $POKY
$ source poky/oe-init-build-env
$ cd build/ (the above command should have brought you to the build directory)

$ vim conf/bblayers.conf

Add ${POKY}/meta-artik
Add ${POKY}/meta-snappy
Add ${POKY}/meta-artik-snappy
to BBLAYERS, replase ${POKY} to real path.

$ vim conf/local.conf
Replace “MACHINE” with:
MACHINE ??= "artik10"
```

- Build kernel snap

Before generate kernel snap, we need run "snapcraft login" to create credentials for snapcraft.

```
$ snapcraft login
```

Now run bitbake to generate kernel snap

```
$ bitbake linux-yocto-artik -c kernel_snap
(Wait long time for task finish)

$ bitbake linux-yocto-artik
$ ls tmp/work/artik10-poky-linux-gnueabi/linux-yocto-artik/3.10.9+gitAUTOINC+84a5d7636d-r0/image/kernel.snap
```

- Build gadget snap

```
$ bitbake artik-gadget-snap -c gadget_snap
$ bitbake artik-gadget-snap
$ ls tmp/work/cortexa15hf-neon-poky-linux-gnueabi/artik-gadget-snap/1.0-r0/image/gadget.snap
```
