#!/bin/bash -e
wget https://www.internic.net/domain/named.root -qO- | sudo tee /var/lib/unbound/root.hints
/etc/init.d/unbound start
/s6-init
