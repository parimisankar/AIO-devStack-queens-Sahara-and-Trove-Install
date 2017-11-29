#This script requires a variable IMAGE (Name of the image and domain)
# Upon execution, will delete any existing images, destroys and undefines the domains with same image name.
#! /bin/bash
IMAGE=$1
cd /var/lib/libvirt/images/ \
&& sudo rm -f $IMAGE.image \
&& cd \
&& virsh destroy $IMAGE \
&& virsh undefine $IMAGE \
&& virsh list --all
