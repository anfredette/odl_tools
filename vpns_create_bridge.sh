#!/bin/bash

sudo ovs-vsctl set-manager tcp:192.168.50.1:6640
sudo ovs-vsctl add-br br-int
sudo ovs-vsctl set bridge br-int protocols=OpenFlow13
sudo ovs-vsctl set-controller br-int tcp:192.168.50.1:6653

