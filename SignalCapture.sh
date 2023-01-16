#!/bin/bash
# Licensed under GPLv3
# created by "h4ck3r" on LET v1

#sudo nmcli radio wifi off
python3 /home/h4ck3r/Desktop/doktora_calismalar/izle.py &
#sudo nmcli radio wifi on
sleep 5
#echo 'ping1 started'
#ping -I wlp34s0 -c 5 -s 16384 10.9.9.1
#echo 'ping1 finished' 
#sleep 2
echo 'iperf started'
iperf -B 10.9.9.66 -c ping.online.net
echo 'iperf finished'
#sleep 2
#sudo speedtest --no-download --simple
#sleep 1
#echo 'ping2 started'
#sudo ping -I wlp34s0 -f  -c 50 10.9.9.1
#echo 'ping2 finished'
#sleep 2
#echo 'all finished'
#sleep 15
sleep 1
pkill -f /home/h4ck3r/Desktop/doktora_calismalar/izle.py
file_name=Sinyal
current_time=$(date "+%Y.%m.%d-%H.%M.%S")
new_fileName=$file_name.$current_time
mv $file_name $new_fileName
inspectrum -r 20e6 /home/h4ck3r/Desktop/doktora_calismalar/$new_fileName
#rm -rf /home/h4ck3r/Desktop/doktora_calismalar/SinyalKaydi
---------------------------------------------------------------------------------
#!/bin/bash
# Licensed under GPLv3
# created by "parmaksiz" on LET v2


#sudo nmcli radio wifi off
python3 /home/h4ck3r/Desktop/doktora_calismalar/izle.py &
#sudo nmcli radio wifi on
#sleep 5
#echo 'ping1 started'
#ping -I wlp34s0 -c 5 -s 16384 10.9.9.1
#echo 'ping1 finished' 
#sleep 2
#echo 'iperf started'
#iperf -B 10.9.9.66 -c ping.online.net
#echo 'iperf finished'
#sleep 2
#sudo speedtest --no-download --simple
#sleep 1
#echo 'ping2 started'
#sudo ping -I wlp34s0 -f  -c 50 10.9.9.1
#echo 'ping2 finished'
#sleep 2
#echo 'all finished'
#sleep 15
sleep 1
pkill -f /home/h4ck3r/Desktop/doktora_calismalar/izle.py
file_name=Sinyal
current_time=$(date "+%Y.%m.%d-%H.%M.%S")
new_fileName=$current_time.$file_name
mv $file_name $new_fileName
inspectrum -r 20e6 /home/h4ck3r/Desktop/doktora_calismalar/$new_fileName
#rm -rf /home/h4ck3r/Desktop/doktora_calismalar/SinyalKaydi
od -f -w8 /home/h4ck3r/Desktop/doktora_calismalar/$new_fileName > $new_fileName.IQ.txt
cat $new_fileName.IQ.txt | head -n15000000 | awk '{print $3}' > $new_fileName.Q.txt
sed 's/,/./g' $new_fileName.Q.txt > $new_fileName.Q.son.txt


#!/bin/bash
# Licensed under GPLv3
# created by "parmaksiz" on DragonOS v3

bekle=.5
tur=Wifi
cihaz=Elitebok-intel8265-i0.25s-l64K-b32M-t10s
gtime=$(date "+%Y.%m.%d-%H.%M.%S")
fileName=0.$gtime.$tur.$cihaz

sudo tcpdump -c1 host 10.9.9.26 and tcp and port 5201
#sleep .5
echo -e "-------------------------------------------------------------------\n"
start=$(date +%s%N)/1000000000
python3 -u /home/pi/Desktop/izle.py;  echo -e "\n-------------------------------------------------------------------"
#pkill -f /home/pi/Desktop/izle.py
end=$(date +%s%N)/1000000000
sleep $bekle
echo -e "\nElapsed Time: $(($end-$start)) seconds, signal capture was successful"
#cp /home/pi/Desktop/Sinyal /home/pi/Desktop/All/$fileName
mv /home/pi/Desktop/Sinyal /media/pi/5EA3-8F78/DragonOS.doktora.calismalar/RF.Kayitlar/All/$fileName
end1=$(date +%s%N)/1000000000
toplam=$(($end1-$start))
echo -e "-------------------------------------------------------------------\n"
echo "Total Time: $toplam seconds, signal recording was successful"
echo -e "-------------------------------------------------------------------\n"
#inspectrum -r 20e6 /media/pi/5EA3-8F78/DragonOS.doktora.calismalar/RF.Kayitlar/All/$fileName
#od -f -w8 /home/live/Desktop/$new_fileName > /home/live/Desktop/$new_fileName.IQ.txt
#cat /home/live/Desktop/$new_fileName.IQ.txt | head -n15000000 | awk '{print $3}' > /home/live/Desktop/$new_fileName.Q.txt
#sed 's/,/./g' /home/live/Desktop/$new_fileName.Q.txt > /home/live/Desktop/$new_fileName.Q.son.txt
#rm -rf /home/live/Desktop/$new_fileName.Q.txt
#rm -rf /home/live/Desktop/$new_fileName.IQ.txt
#mv /home/live/Desktop/$new_fileName* /media/live/5EA3-8F78/DragonOS.doktora.calismalar/RF.Kayitlar/Note8/

#!/bin/bash
# Licensed under GPLv3
# created by "parmaksiz" on Ubuntu v4
for i in {1..200}
do
bekle=.5
tur=Wifi
cihaz=Rpi3Bp-b827ebf1a717-i0.25s-l64K-b32M-t10s
gtime=$(date "+%Y.%m.%d-%H.%M.%S")
fileName=19.$gtime.$tur.$cihaz
sudo tcpdump -c1 host 10.9.9.11 and tcp and port 5201
echo -e "-------------------------------------------------------------------\n"
start=$(date +%s%N)/1000000000
python3 -u /home/pi/Desktop/izle.py;  echo -e "\n-------------------------------------------------------------------"
#pkill -f /home/pi/Desktop/izle.py
end=$(date +%s%N)/1000000000
sleep $bekle
echo -e "\nElapsed Time: $(($end-$start)) seconds, signal capture was successful"
#cp /home/pi/Desktop/Sinyal /home/pi/Desktop/All/$fileName
mv /home/pi/Desktop/Sinyal /home/pi/Desktop/All/$fileName 
end1=$(date +%s%N)/1000000000
toplam=$(($end1-$start))
echo -e "-------------------------------------------------------------------\n"
echo "Total Time: $toplam seconds, signal recording was successful"
echo -e "-------------------------------------------------------------------\n"
sleep 1.5
done
#inspectrum -r 20e6 /media/pi/5EA3-8F78/DragonOS.doktora.calismalar/RF.Kayitlar/All/$fileName
#od -f -w8 /home/live/Desktop/$new_fileName > /home/live/Desktop/$new_fileName.IQ.txt
#cat /home/live/Desktop/$new_fileName.IQ.txt | head -n15000000 | awk '{print $3}' > /home/live/Desktop/$new_fileName.Q.txt
#sed 's/,/./g' /home/live/Desktop/$new_fileName.Q.txt > /home/live/Desktop/$new_fileName.Q.son.txt
#rm -rf /home/live/Desktop/$new_fileName.Q.txt
#rm -rf /home/live/Desktop/$new_fileName.IQ.txt
#mv /home/live/Desktop/$new_fileName* /media/live/5EA3-8F78/DragonOS.doktora.calismalar/RF.Kayitlar/Note8/
