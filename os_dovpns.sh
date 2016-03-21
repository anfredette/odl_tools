#!/bin/bash

source openrc admin admin

/opt/tools/os_addnano.sh
sleep 1
/opt/tools/os_addadminkey.sh
sleep 1
/opt/tools/os_vpnsaddnetwork.sh
sleep 5
/opt/tools/os_vpnsaddvms.sh
