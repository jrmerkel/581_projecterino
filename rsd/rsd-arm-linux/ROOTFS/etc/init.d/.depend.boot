TARGETS = mountkernfs.sh hostname.sh udev mountdevsubfs.sh mountall.sh mountall-bootclean.sh mountnfs.sh mountnfs-bootclean.sh hwclock.sh networking urandom resolvconf checkroot.sh udev-mtab checkroot-bootclean.sh bootmisc.sh checkfs.sh procps kmod mtab.sh
INTERACTIVE = udev checkroot.sh checkfs.sh
udev: mountkernfs.sh
mountdevsubfs.sh: mountkernfs.sh udev
mountall.sh: checkfs.sh checkroot-bootclean.sh
mountall-bootclean.sh: mountall.sh
mountnfs.sh: mountall.sh mountall-bootclean.sh networking
mountnfs-bootclean.sh: mountall.sh mountall-bootclean.sh mountnfs.sh
hwclock.sh: mountdevsubfs.sh
networking: resolvconf mountkernfs.sh mountall.sh mountall-bootclean.sh urandom
urandom: mountall.sh mountall-bootclean.sh hwclock.sh
resolvconf: mountall.sh mountall-bootclean.sh
checkroot.sh: hwclock.sh mountdevsubfs.sh hostname.sh
udev-mtab: udev mountall.sh mountall-bootclean.sh
checkroot-bootclean.sh: checkroot.sh
bootmisc.sh: checkroot-bootclean.sh mountall-bootclean.sh mountall.sh mountnfs.sh mountnfs-bootclean.sh udev
checkfs.sh: checkroot.sh mtab.sh
procps: mountkernfs.sh mountall.sh mountall-bootclean.sh udev
kmod: checkroot.sh
mtab.sh: checkroot.sh
