#!/usr/bin/env bash

perl -i -pe 's/disable_root: 1/disable_root: 0/' /etc/cloud/cloud.cfg

perl -i -pe 's/#PermitRootLogin .*/PermitRootLogin without-password/' /etc/ssh/sshd_config

perl -i -pe 's/.*(ssh-rsa .*)/\1/' /root/.ssh/authorized_keys


perl -i -pe 's|/etc/dnsmasq.more.conf|/etc/dnsmasq.more2.conf|g'  dnsmasq.conf


# 这个命令跟sed -i 's/a/b/'  类似， 但用perl更方便应对"/" . 
#
# 如果想保留原文件， 使用 sed -i.org 或者 perl -i.org 即可。 
#
# 
