opkg install wget
wait
opkg install --force-overwrite  https://raw.githubusercontent.com/tarekzoka/plugins/main/opkg-tools_all.ipk
wait
#!/bin/sh
echo "install curl"
opkg update
opkg install curl
killall -9 enigma2
exit

