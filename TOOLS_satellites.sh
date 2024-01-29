echo
#!/bin/sh
#

wget -O /etc/tuxbox/satellites.xml "https://raw.githubusercontent.com/tarekzoka/plugins/main/satellites.xml"
wait
wget -O /etc/enigma2/satellites.xml "https://raw.githubusercontent.com/tarekzoka/plugins/main/satellites.xml"

killall -9 enigma2

sleep 2;
