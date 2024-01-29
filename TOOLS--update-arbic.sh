echo
#!/bin/sh
opkg update 
opkg upgrade
opkg update
opkg install python-image
opkg install python-imaging
opkg install python-argparse
opkg install python-requests
opkg install python-multiprocessing
opkg install --force-depends --force-overwrite --force-downgrade curl
opkg install --force-depends --force-overwrite --force-downgrade p7zip
opkg update
opkg install wget
opkg install hlsdl
opkg install f4mdump
opkg install python-pycrypto
opkg install enigma2-plugin-systemplugins-serviceapp
opkg install ffmpeg
opkg install exteplayer3
opkg install gstplayer

wait
wget -O /var/volatile/tmp/imagetoarabic.tar.gz "https://onedrive.live.com/embed?cid=CFCA224FBA296C58&resid=CFCA224FBA296C58%21167&authkey=AJWWLe6vRYyubb4"

echo ""
# Download and install arabic converter
cd /tmp
set -e
tar -xzf imagetoarabic.tar.gz -C /
set +e
rm -f imagetoarabic.tar.gz
wget -O /var/volatile/tmp/ArabicSavior-1.8.tar.gz https://onedrive.live.com/download?cid=CFCA224FBA296C58&resid=CFCA224FBA296C58%21166&authkey=ABiuiBZha2WdBtY

echo ""
# Download and install arabicsaviour
cd /tmp
set -e
tar -xzf ArabicSavior-1.8.tar.gz -C /
set +e
rm -f ArabicSavior-1.8.tar.gz


echo -n "Restarting E2... "
init 4
sleep 1
init 3
exit 0










