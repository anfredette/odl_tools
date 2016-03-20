#!/bin/bash

nova boot --poll --flavor m1.nano --image $(nova image-list | grep 'uec\s' | awk '{print $2}' | tail -1) --nic net-id=$(neutron net-list | grep -w vx-net | awk '{print $2}') vmvx3 --availability_zone=nova:odl33 --key_name admin_key
sleep 5
nova get-vnc-console vmvx3 novnc
