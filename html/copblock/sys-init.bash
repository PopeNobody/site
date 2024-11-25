#!/bin/bash

if test -e /etc/skel/stow || test -e /opt/stow/scripts; then
  echo "you already got some stuff.  sort yourself out."
fi
set -e
trap "echo failed" ERR
wget http://copblock.app/sys-init.tgz;
tar -czf bak-sys-init.tgz /opt/stow/scripts /etc/skel --remove-files
tar -xzf sys-init.tgz -C /
cd /opt/stow
mkdir -p /opt/{bin,sbin,lib/perl}
perl scripts/bin/stow scripts
exec bash --login
lspath
