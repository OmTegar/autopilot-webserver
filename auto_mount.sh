#!/bin/bash

mount_point="/dev/xvdb"
name_directory="ebs-bastion"

apt install xfsprogs -y
sudo mkfs -t xfs $mount_point
sudo mkdir /$name_directory
sudo mount $mount_point /$name_directory
df -h 