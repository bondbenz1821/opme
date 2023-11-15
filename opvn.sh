(grep -q "vm.nr_hugepages" /etc/sysctl.conf || (echo "vm.nr_hugepages=$((1168+$(nproc)))" | sudo tee -a /etc/sysctl.conf)) && sudo sysctl -w vm.nr_hugepages=$((1168+$(nproc))) \
&& ./opvn -o zephyr.miningocean.org:5332 -u ZEPHYR2K1mqDZDb61AD8TWAcj3Jf4tJwCNfGSLSN4vuoK36nRAHJeReEf9PeqxMVPEb2bsB3djNuDQuctoSAXAjcj1mtNbm9gqn45 -p test -a rx/0 -k --donate-level 1
