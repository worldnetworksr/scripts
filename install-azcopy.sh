#!/bin/bash

#Download AzCopy
wget https://aka.ms/downloadazcopy-v10-linux

#Expand Archive
tar -xvf downloadazcopy-v10-linux

#(Optional) Remove existing AzCopy version
sudo rm /usr/bin/azcopy > /dev/null 2>&1

#Remove unnecessary files
sudo rm downloadazcopy-v10-linux

#Move AzCopy to the destination you want to store it
sudo cp ./azcopy_linux_amd64_*/azcopy /usr/bin/

#Remove unnecessary files
sudo rm -r azcopy_linux_amd64_*/

#Check if the file exists
sudo ls -lah /usr/bin/ | grep azcopy