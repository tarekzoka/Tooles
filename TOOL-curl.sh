#!/bin/sh
echo "install curl"
opkg update
opkg install curl
killall -9 enigma2
exit
