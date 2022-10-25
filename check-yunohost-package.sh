#!/bin/bash
echo "1 oui"
vagrant up
echo "2 oui"
vagrant ssh -c "lxd init --auto;/package_check/package_check.sh /restic_ynh"
echo "3 oui"
vagrant halt
echo "4 oui"
