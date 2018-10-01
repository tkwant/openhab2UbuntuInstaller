#!/bin/sh 
cd
mkdir openhab2
cd openhab2
wget -O openhab_2_2_0.zip "https://bintray.com/openhab/mvn/download_file?file_path=org%2Fopenhab%2Fdistro%2Fopenhab%2F2.2.0%2Fopenhab-2.2.0.zip"
unzip "openhab_2_2_0.zip"
rm "openhab_2_2_0.zip"
adduser --system --no-create-home --group --disabled-login openhab
cd
chown -hR openhab:openhab openhab2/
echo "Start openhab2 with  sudo su -s /bin/bash -c 'openhab2/start.sh' openhab"
