#!/bin/sh
opkg update && opkg upgrade
opkg install enigma2-plugin-systemplugins-serviceapp
opkg install gstreamer1.0-plugins-good
opkg install gstreamer1.0-plugins-base
opkg install gstreamer1.0-plugins-bad
opkg install gstreamer1.0-plugins-ugly
opkg install gstreamer1.0-plugins-bad-meta
opkg install enigma2-plugin-systemplugins-softcamstartup 
sleep 2;
exit
