#!/bin/sh -e
# Bluetooth initialization on armani
#
# Bluetooth initialization job, specifically for the Redmi 1s,
# starts the hciattach job in the android container to run hci_qcomm_init,
# which will write the bluetooth address and bring up the chip.
#

timeout=10
# loop 10 times and then exit, if the property service
# isnt up after 80 sec, it is likely not starting at all
while [ ! -e /dev/socket/property_service ]; do
    sleep 8
    if [ "$timeout" -le 0 ]; then
        echo "/dev/socket/property_service isn't up"
        exit 1
    fi
    timeout=$(($timeout - 1))
done

setprop ctl.start hciattach
sleep 5
setprop bluetooth.hciattach true
echo 1 > /sys/module/hci_smd/parameters/hcismd_set
