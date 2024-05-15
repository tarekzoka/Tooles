#!/bin/sh
#

wget -O /tmp/ipkuninstaller.tar.gz "https://gitlab.com/hanfy1971/plugin/-/raw/main/ipkuninstaller/ipkuninstaller.tar.gz"

tar -xzf /tmp/ipkuninstaller.tar.gz -C /

wait

rm -f /tmp/ipkuninstaller.tar.gz
echo "   UPLOADED BY  >>>>   TAREK_TT "   
sleep 4;                                                                                                                  
echo ". >>>>         RESTARING     <<<<"
"**********************************************************************************"
wait
killall -9 enigma2
exit 0
