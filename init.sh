#!/bin/bash

. /etc/profile

/etc/init.d/ssh start

# put back in place azure-cli in the persistent /opt
rm -rf /opt/az && mv /usr/local/az /opt

/home/shared/dotfiles/setup.sh

exec $*



