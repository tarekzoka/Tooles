#!/bin/sh
echo "install wget"
opkg update
opkg install wget
killall -9 enigma2
exit
