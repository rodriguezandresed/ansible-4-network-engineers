#!/bin/bash
#-i ./gns3hosts tells the inventory file to use
ansible gns3-core -i ./gns3hosts -m raw -a "show version" -u andres -k

#for all devices ansible all -i ./gns3hosts -m raw -a "show version" -u andres -k

ansible all -i ./gns3hosts -m raw -a "show version" -u andres -k | grep flash0

#This one grabs the lines with success (to see the device name) and Software
ansible all -i ./gns3hosts -m raw -a "show version" -u andres -k | grep SUCCESS|Version

#filtering for usernames
ansible all -i ./gns3hosts -m raw -a "show run" -u andres -k | grep 'SUCCESS\|username'

#filtering for usernames and storing them
ansible all -i ./gns3hosts -m raw -a "show run | in user" -u andres -k | grep 'SUCCESS\|username' > usernames.txt

#Saving their run configs
ansible all -i ./gns3hosts -m raw -a "show run" -u andres -k | grep 'SUCCESS\|username' > shrun.txt


#Saving their run configs
ansible all -i ./gns3hosts -m raw -a "show version" -u andres -k  > shver.txt

#looking for IP in arp-caches
ansible all -i ./gns3hosts -m raw -a "show arp" -u andres -k  | grp 'SUCESS\|71'

#looking for IP in arp-table
ansible all -i ./gns3hosts -m raw -a "show mac address-table" -u andres -k 

#looking a specific host
ansible all -i ./gns3hosts -m raw -a "show mac address-table" -u andres -k | grep 'SUCCESS\|fe7a'