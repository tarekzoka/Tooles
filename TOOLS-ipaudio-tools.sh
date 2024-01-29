wait

opkg update && opkg upgrade && opkg install gstreamer1.0-plugins-good gstreamer1.0-plugins-base
gstreamer1.0-plugins-bad-meta
 gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly
libgstplayer-1.0-0 opkg install --force-depends gstreamer1.0-plugins-bad-meta

wait

wget "https://raw.githubusercontent.com/tarekzoka/55/main/ipaudio-6.6.tar.gz"

tar -xzf ipaudio-6.6.tar.gz  -C /

wait

rm -f /tmp/ipaudio-6.6.tar.gz

echo "   UPLOADED BY  >>>>   TAREK_TT "   
sleep 4;                                                                                                                  
echo ". >>>>         RESTARING     <<<<"
echo "**********************************************************************************"
wait
killall -9 enigma2
exit 0















