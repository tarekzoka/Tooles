#!/bin/sh
[ -d /tmp/test ] || mkdir -p /tmp/test
####################################################################################################
curl  --limit-rate 100K     -k -A -k -s  https://cccamfrei.com/free/get.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /etc/CCcam.cfg
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor35
cd
more /tmp/test/soubor35
####################################################################################################
curl  --limit-rate 10K --max-time 7    -k -A -k -s  https://www.cccambird.com/freecccam.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  >> /etc/CCcam.cfg
grep -o -i 'C:[^<]*' CCcam > /tmp/test/soubor5
cd
more /tmp/test/soubor5
####################################################################################################
curl  --limit-rate 100K     -s -k -Lbk -A -k -m 8 -m 52 -d "do=cccam&doccam=generate"  http://cccam.journalsat.com/index.php http://cccam.journalsat.com/get.php?do=cccam/ -X POST > /tmp/test/CCcam
sed -ne 's#.*<th colspan="2">\([^<]*\).*#\1#p' /tmp/test/CCcam > /tmp/test/CCcam1
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam1  >> /etc/CCcam.cfg
grep -o -i 'C:[^<]*' CCcam1  > /tmp/test/soubor6
cd
more /tmp/test/soubor6
####################################################################################################
curl  --limit-rate 100K      -k -Lbk -A -k -m 8 -m 52 -s  https://cccamtiger.com/fcccam/ > /tmp/test/CCcam 
cd /tmp/test
grep "C :" CCcam  > CCcam2.txt
sed 's/\([C]\+\)/\n\1/g' CCcam2.txt > CCcam
grep "C :" CCcam  > CCcam1.txt
cut -d '<' -f 1  CCcam1.txt > CCcam2.txt
cut -c 2-47 CCcam2.txt  > CCcam3.txt
sed -e "s/ /C/" CCcam3.txt >> /etc/CCcam.cfg
sed -e "s/ /C/" CCcam3.txt > /tmp/test/soubor4
more /tmp/test/soubor4
####################################################################################################
PATH_J_XM1=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
PATH_J_XM2=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
curl  -Lbk -m 4555 -m 6555 -k   -s -d 'Username='$PATH_J_XM1'&Password='$PATH_J_XM2'&addf=2 Days Free Cccam' -X POST  https://clinepk.com/freecccam/index.php > /tmp/test/CCcam
cd /tmp/test
sed -ne '/Server :/ p' CCcam > CCcam1
sed -ne 's#.*Server \([^<]*\).*#\1#p' CCcam1 > hotovo
sed -ne 's#.*Port :\([^<]*\).*#\1#p' CCcam1 >> hotovo
sed -ne 's#.*User :\([^<]*\).*#\1#p' CCcam1 >> hotovo
sed -ne 's#.*Pass :\([^<]*\).*#\1#p' CCcam1 >> hotovo
sed -n 'H; $x; $s/\n//gp' hotovo > hotovo1
sed -e "s/:/C:/" hotovo1 > CCcam
grep -o -i 'C:[^<]*' CCcam  >> /etc/CCcam.cfg
grep -o -i 'C:[^<]*' CCcam > /tmp/test/soubor8
cd
more /tmp/test/soubor8
####################################################################################################



####################################################################################################
/usr/script/najdiCFG.sh >>/dev/null 2>&1 </dev/null &
####################################################################################################
echo ""
sleep 2
echo "restartuji..... **cam"




  if [ -f  "/etc/systemd/system.conf" ] || [ -f "/usr/lib/python2.7/urllib.pyo" ]; then 
if [ -d '/usr/lib/enigma2/python/Plugins/PLi' ];then
aux=''
else
aux='aux'
fi
else
aux=''
  fi
  if [ "`ps "$aux"|grep -v 'grep'|grep -ic  'cccam'`" -gt '0' ]; then
killbylls=`ps "$aux"| grep -v grep | grep cam|sed -n '1p' | grep -oi  '/usr.*'|sed -n '1p' | grep -oi 'cccam.*' | cut -d' ' -f1` 
elif [ "`ps "$aux"|grep -v 'grep'|grep -ic  'oscam'`" -gt '0' ]; then
killbylls=`ps "$aux"| grep -v grep | grep -i cam|sed -n '1p' | grep -oi  '/usr.*'|sed -n '1p' | grep -oi 'oscam.*' | cut -d' ' -f1`
elif [ "`ps "$aux"|grep -v 'grep'|grep -ic  'ncam'`" -gt '0' ]; then
killbylls=`ps "$aux"| grep -v grep | grep cam|sed -n '1p' | grep -oi  '/usr.*'|sed -n '1p' | grep -oi 'ncam.*' | cut -d' ' -f1`
elif [ "`ps "$aux"|grep -v 'grep'|grep -ic  'gcam'`" -gt '0' ]; then
killbylls=`ps "$aux"| grep -v grep | grep cam|sed -n '1p' | grep -oi  '/usr.*'|sed -n '1p' | grep -oi 'gcam.*' | cut -d' ' -f1`
  fi

camino=`ps -w "$aux"| grep -v grep | grep cam | sed -n '1p' | grep -oi  '/usr.*'|sed -n '1p'`
if [ "`echo "$camino"|grep -c 'oscam'`" -gt '0' ] && [ "`echo "$camino"|grep -c '\-b'`" = '0' ]; then
camino=$camino' -b'
fi
killall -9 "$killbylls" ; sleep 1 ; $camino >>/dev/null 2>&1 </dev/null &
cd /
####################################################################################################
PATH_J_XM1=$(echo "$((10000 + RANDOM % 9999))$((RANDOM % 9999))")
PATH_J_XM2=$(echo "$((10000 + RANDOM % 9999))$((RANDOM % 9999))")
curl  --limit-rate 100K -Lbk -m 4555 -m 6555 -k -s -d 'Username='$PATH_J_XM1'&Password='$PATH_J_XM2'&addf=2 Days Free Cccam' -X POST  https://realcccam.com/freecccam/index.php > /tmp/test/CCcam
cd /tmp/test
sed -ne '/Server :/ p' CCcam > CCcam1
sed -ne 's#.*Server \([^<]*\).*#\1#p' CCcam1 > hotovo
sed -ne 's#.*Port :\([^<]*\).*#\1#p' CCcam1 >> hotovo
sed -ne 's#.*User :\([^<]*\).*#\1#p' CCcam1 >> hotovo
sed -ne 's#.*Pass :\([^<]*\).*#\1#p' CCcam1 >> hotovo
sed -n 'H; $x; $s/\n//gp' hotovo > hotovo1
sed -e "s/:/C:/" hotovo1 > CCcam
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor1
cd
more /tmp/test/soubor1
####################################################################################################
PATH_J_XM1=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
PATH_J_XM2=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
curl  --limit-rate 100K -Lbk -m 4555 -m 6555 -k -s -d 'Username='$PATH_J_XM1'&Password='$PATH_J_XM2'&addf=2 Days Free Cccam' -X POST  https://4k786.com/freecccam/index.php > /tmp/test/CCcam
cd /tmp/test
echo "C: "  > hotovo
sed -ne 's#.*Server : \([^<]*\).*#\1#p' CCcam >> hotovo
echo -n " "  >> hotovo
sed -ne 's#.*Port : \([^<]*\).*#\1#p' CCcam >> hotovo
echo -n " "  >> hotovo
sed -ne 's#.*User : \([^<]*\).*#\1#p' CCcam >> hotovo
echo -n " "  >> hotovo
sed -ne 's#.*Pass : \([^<]*\).*#\1#p' CCcam >> hotovo
sed -n 'H; $x; $s/\n//gp' hotovo > hotovo1
echo ""  >> hotovo1
cat hotovo1 > CCcam
grep -o -i 'C:[^<]*' CCcam > /tmp/test/soubor37
cd
more /tmp/test/soubor37
####################################################################################################
curl  --limit-rate 100K -k -A -k -s  https://cccam-premium.com/free-cccam/ > /tmp/test/CCcam
cd /tmp/test
grep -o -i 'C: free[^<]*' CCcam > /tmp/test/soubor38
cd
more /tmp/test/soubor38
####################################################################################################
curl  --limit-rate 100K -k -A -k -s  https://dreamtvsat.com/fcccam/?drem=freedeam > /tmp/test/CCcam
cd /tmp/test
grep   'Host  </th><th>[^<]*' CCcam > CCcam1
sed -i "s#</th></tr><th id='t1'># #g" CCcam1 
sed -i "s#</th><th>##g" CCcam1 
sed -i "s#Host #C:#g" CCcam1
sed -i "s#Port  ##g" CCcam1
sed -i "s#User  ##g" CCcam1
sed -i "s#Password  ##g" CCcam1
grep -o -i 'C:[^<]*' CCcam1 > CCcam
grep -o -i 'C:[^<]*' CCcam > /tmp/test/soubor40
cd
more /tmp/test/soubor40
####################################################################################################
curl  --limit-rate 100K  -k -Lbk -A -k -m 8000 -m 5200 -s  https://premiumcccam.store/TEST24.php > /tmp/test/CCcam
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam > /tmp/test/soubor42
cd
more /tmp/test/soubor42
####################################################################################################
PATH_J_XM1=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
PATH_J_XM2=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
curl --limit-rate 100K -Lbk -m 4555 -m 6555 -k -s -d 'Username='$PATH_J_XM1'&Password='$PATH_J_XM2'&addf=2 Days Free Cccam' -X POST  https://cccampanel.com/index.php > /tmp/test/CCcam
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor2
cd
more /tmp/test/soubor2
####################################################################################################
curl  --limit-rate 100K    -k -A -k -s  https://cccamas.com/free/get.php > /tmp/test/CCcam
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor3
cd
more /tmp/test/soubor3
####################################################################################################
PATH_J_XM1=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
PATH_J_XM2=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
curl  --limit-rate 100K -Lbk -m 4555 -m 6555 -k -s -d 'Username='$PATH_J_XM1'&Password='$PATH_J_XM2'&addf=2 Days Free Cccam' -X POST  https://dreamcccam.com/freecccam/index.php > /tmp/test/CCcam
cd /tmp/test
sed -ne '/Server :/ p' CCcam > CCcam1
sed -ne 's#.*Server \([^<]*\).*#\1#p' CCcam1 > hotovo
sed -ne 's#.*Port :\([^<]*\).*#\1#p' CCcam1 >> hotovo
sed -ne 's#.*User :\([^<]*\).*#\1#p' CCcam1 >> hotovo
sed -ne 's#.*Pass :\([^<]*\).*#\1#p' CCcam1 >> hotovo
sed -n 'H; $x; $s/\n//gp' hotovo > hotovo1
sed -e "s/:/C:/" hotovo1 > CCcam
grep -o -i 'C:[^<]*' CCcam > /tmp/test/soubor9
cd
more /tmp/test/soubor9
####################################################################################################
PATH_J_XM1=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
PATH_J_XM2=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
curl curl  --limit-rate 100K -Lbk -m 4555 -m 6555 -k -s -d 'Username='$PATH_J_XM1'&Password='$PATH_J_XM2'&addf=2 Days Free Cccam' -X POST  https://sunnyhd.top/index.php > /tmp/test/CCcam
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor15
cd
more /tmp/test/soubor15
####################################################################################################
curl  --limit-rate 100K    -k -A -k -s  http://infosat.satunivers.tv/cgn/index1.php > /tmp/test/CCcam
cd /tmp/test
echo "C: "  > hotovo
sed -ne 's#.*host: \([^<]*\).*#\1#p' CCcam >> hotovo
echo -n " "  >> hotovo
sed -ne 's#.*port: \([^<]*\).*#\1#p' CCcam >> hotovo
sed -ne 's#.*user: \([^<]*\).*#\1#p' CCcam >> hotovo
echo -n " "  >> hotovo
sed -ne 's#.*pass: \([^<]*\).*#\1#p' CCcam >> hotovo
sed -n 'H; $x; $s/\n//gp' hotovo > hotovo1
echo ""  >> hotovo1
cat hotovo1 > CCcam
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor11
cd
more /tmp/test/soubor11
####################################################################################################
curl  --limit-rate 100K    -k -A -k -s  http://infosat.satunivers.tv/cgn/server2/index.php > /tmp/test/CCcam
cd /tmp/test
echo "C: "  > hotovo
sed -ne 's#.*host: \([^<]*\).*#\1#p' CCcam >> hotovo
echo -n ""  >> hotovo
sed -ne 's#.*port: \([^<]*\).*#\1#p' CCcam >> hotovo
echo -n " "  >> hotovo
sed -ne 's#.*user: \([^<]*\).*#\1#p' CCcam >> hotovo
echo -n " "  >> hotovo
sed -ne 's#.*pass: \([^<]*\).*#\1#p' CCcam >> hotovo
sed -n 'H; $x; $s/\n//gp' hotovo > hotovo1
echo ""  >> hotovo1
cat hotovo1 > CCcam
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor18
cd
more /tmp/test/soubor18
####################################################################################################
curl  --limit-rate 100K     -k -A -k -s  https://www.freecamtv.com/try2.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor12
cd
more /tmp/test/soubor12
####################################################################################################
curl  --limit-rate 100K     -k -A -k -s  https://www.freecamtv.com/try3.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor13
cd
more /tmp/test/soubor13
####################################################################################################
curl  --limit-rate 15K    -k -A -k -s  https://iptvpremiums.com/cccamfree/get.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor14
cd
more /tmp/test/soubor14
####################################################################################################
curl  --limit-rate 15K    -k -A -k -s  https://www.tvlivepro.com/free_cccam_48h/ > /tmp/test/CCcam
cd /tmp/test
grep   'Host  </th><th>[^<]*' CCcam > CCcam1
sed -i "s#</th></tr><th id='t1'># #g" CCcam1 
sed -i "s#</th><th>##g" CCcam1 
sed -i "s#Host #C:#g" CCcam1
sed -i "s#Port  ##g" CCcam1
sed -i "s#User  ##g" CCcam1
sed -i "s#Password  ##g" CCcam1
grep -o -i 'C:[^<]*' CCcam1 > CCcam
grep -o -i 'C:[^<]*' CCcam > /tmp/test/soubor28
cd
more /tmp/test/soubor28
####################################################################################################
curl   -k -Lbk -A -vk -m 800 -m 5200 -s  https://cccamiptv.co/free-cccam/ > /tmp/test/CCcam
cd /tmp/test
grep -o -i 'C: [^<]*' CCcam  > /tmp/test/soubor24
cd 
more /tmp/test/soubor24
####################################################################################################
curl  --limit-rate 100K      -k -Lbk -A -k -m 8 -m 52 -s  http://cccambank.com/free5/get2.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor22
cd
more /tmp/test/soubor22
####################################################################################################
curl  --limit-rate 25K      -k -Lbk -A -k -m 8 -m 52 -s  https://cccamiptv.co/free-cccam/#page-content > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C: free[^<]*' CCcam  > /tmp/test/soubor16
cd
more /tmp/test/soubor16
####################################################################################################
curl  --limit-rate 100K     -k -A -k -s  server.satunivers.tv/download.php?file=cccm.cfg > /tmp/test/soubor17 
cd
more /tmp/test/soubor17
####################################################################################################
curl  --limit-rate 100K     -k -A -k -s  infosat.satunivers.tv/download.php?file=cccm.cfg > /tmp/test/soubor20 
cd
more /tmp/test/soubor20
####################################################################################################
curl  --limit-rate 100K     -k -A -k -s  https://bosscccam.co/Test.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam > /tmp/test/soubor10
cd
more /tmp/test/soubor10
####################################################################################################
curl  --limit-rate 100K      -k -Lbk -A -k -s  https://iptvcccam.tv/cccamfree/get.php > /tmp/test/CCcam
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor23
cd
more /tmp/test/soubor23
####################################################################################################
curl  --limit-rate 100K     -k -A -k -s  server.satunivers.tv/download.php?file=cccm.cfg > /tmp/test/soubor19 
cd
more /tmp/test/soubor19
####################################################################################################
curl  --limit-rate 100K     -k -A -k -s  http://cccamprima.com/free5/get2.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor26
cd
more /tmp/test/soubor26
####################################################################################################
PATH_J_XM1=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
PACTH_J_XM2=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
curl  --limit-rate 100K      -k -Lbk -A -k -m 8 -m 52 -s -d "Username=$(echo "$((1000 + RANDOM % 99999))$((RANDOM % 99999))")&cline= Step 2 Click Here  " -X POST http://test.linux24.tk/test/ > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C: [^<]*' CCcam  > /tmp/test/soubor29
cd
more /tmp/test/soubor29
####################################################################################################
PATH_J_XM1=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
PATH_J_XM2=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
curl  --limit-rate 100K -Lbk -m 4555 -m 6555 -k -s -d 'Username='$PATH_J_XM1'&Password='$PATH_J_XM2'&addf=2 Days Free Cccam' -X POST  https://4gtv.us/freecccam/index.php > /tmp/test/CCcam
cd /tmp/test
echo "C: "  > hotovo
sed -ne 's#.*Server : \([^<]*\).*#\1#p' CCcam >> hotovo
echo -n " "  >> hotovo
sed -ne 's#.*Port : \([^<]*\).*#\1#p' CCcam >> hotovo
echo -n " "  >> hotovo
sed -ne 's#.*User : \([^<]*\).*#\1#p' CCcam >> hotovo
echo -n " "  >> hotovo
sed -ne 's#.*Pass : \([^<]*\).*#\1#p' CCcam >> hotovo
sed -n 'H; $x; $s/\n//gp' hotovo > hotovo1
echo ""  >> hotovo1
cat hotovo1 > CCcam
grep -o -i 'C: [^<]*' CCcam  > /tmp/test/soubor30
cd
more /tmp/test/soubor30
####################################################################################################
PATH_J_XM1=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
PATH_J_XM2=$(echo "$((1000 + RANDOM % 9999))$((RANDOM % 9999))")
curl  --limit-rate 35K -Lbk -m 4555 -m 6555 -k -s -d 'Username='$PATH_J_XM1'&Password='$PATH_J_XM2'&addf=2 Days Free Cccam' -X POST  https://4g4k.top/freecccam/index.php > /tmp/test/CCcam
cd /tmp/test
echo "C: "  > hotovo
sed -ne 's#.*Server : \([^<]*\).*#\1#p' CCcam >> hotovo
echo -n " "  >> hotovo
sed -ne 's#.*Port : \([^<]*\).*#\1#p' CCcam >> hotovo
echo -n " "  >> hotovo
sed -ne 's#.*User : \([^<]*\).*#\1#p' CCcam >> hotovo
echo -n " "  >> hotovo
sed -ne 's#.*Pass : \([^<]*\).*#\1#p' CCcam >> hotovo
sed -n 'H; $x; $s/\n//gp' hotovo > hotovo1
echo ""  >> hotovo1
cat hotovo1 > CCcam
grep -o -i 'C: [^<]*' CCcam  > /tmp/test/soubor7
cd
more /tmp/test/soubor7
####################################################################################################
curl  --limit-rate 100K     -k -A -k -s  https://cccamia.com/free-cccam/ > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor31
cd
more /tmp/test/soubor31
####################################################################################################
curl  --limit-rate 100K  -k -Lbk -A -k -m 8 -m 52 -s  https://cccamhub.com/cccamfree/ > /tmp/test/CCcam
cd /tmp/test
grep -o -i 'C: free[^<]*' CCcam  > /tmp/test/soubor32
cd
more /tmp/test/soubor32
####################################################################################################
curl  --limit-rate 100K   -k -Lbk -A -k -m 8 -m 52 -s  https://cccamfree.net/#freecccam > /tmp/test/CCcam
cd /tmp/test
grep -o -i 'C: free[^<]*' CCcam > /tmp/test/soubor33
cd
more /tmp/test/soubor33
####################################################################################################
curl  --limit-rate 100K     -k -A -k -s  https://premiumcccam.store/TEST24.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor34
cd
more /tmp/test/soubor34
####################################################################################################
curl  --limit-rate 100K     -k -A -k -s  https://thecccam.com/cccam-free.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor39
cd
more /tmp/test/soubor39
####################################################################################################
curl  --limit-rate 100K     -k -A -k -s  https://cccamprime.com/cccam48h.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor41
cd
more /tmp/test/soubor41
####################################################################################################
curl  --limit-rate 100K      -k -Lbk -A -k -m 8 -m 52 -s  http://cccambank.com/free5/get2.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor43
cd
more /tmp/test/soubor43
####################################################################################################
curl  --limit-rate 100K  -k -Lbk -m 55532 -m 555104 -s http://iptvcam24.com/server1.php > /tmp/test/CCcam
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam  > /tmp/test/soubor21
cd
more /tmp/test/soubor21
####################################################################################################
curl  --limit-rate 100K      -k -Lbk -A -k -m 8 -m 52 -s  https://cccamx.com/v2/getCode.php > /tmp/test/CCcam 
cd /tmp/test
grep -o -i 'C:[^<]*' CCcam > /tmp/test/soubor44
cd
more /tmp/test/soubor44
####################################################################################################





cd /tmp/test
cat soubor38 soubor15 soubor37 soubor7 soubor30 soubor1 soubor2 soubor3 soubor8 soubor11 soubor18 soubor6 soubor5 soubor4 soubor35 soubor28 soubor29 soubor12 soubor9 soubor13 soubor14 soubor20 soubor41 soubor22 soubor10 soubor17 soubor19 soubor34 soubor24 soubor26 soubor39 soubor16 soubor23 soubor43 soubor44 soubor31 soubor32 soubor33 soubor40 soubor42 soubor21 > /tmp/CCcam.cfg
sed -i "s/c:/C:/" /tmp/CCcam.cfg
cat '/tmp/CCcam.cfg' | while read radek ; do
pocet=`echo $radek| wc -w`
if [ $pocet -gt 4 ]; then
echo $radek >> /tmp/CCcam.cfg2
fi 
done
sleep 2
cd
rm -rf /etc/CCcam.cfg
cp /tmp/CCcam.cfg2 /etc/CCcam.cfg
rm -rf /tmp/CCcam.cfg2
rm -rf /tmp/CCcam.cfg
rm -rf /tmp/test
rm -rf /CCcam*

sleep 1







####################################################################################################

####################################################################################################
/usr/script/najdiCFG.sh >>/dev/null 2>&1 </dev/null &
####################################################################################################
/usr/script/restart.sh >>/dev/null 2>&1 </dev/null &
####################################################################################################

exit
