#!/bin/bash

#forcepoint uninstall Password - get the universal password from DLP Admin
password="Password will be here"

#Forcepoint uninstall command
sudo -S /usr/local/sbin/wepsvc --uninstall --password "$password"

#run Recon
sudo jamf recon
