#!/bin/sh 
apt-get install libc6-i386
wget -O zulu-8.tar.gz "https://cdn.azul.com/zulu/bin/zulu8.30.0.1-jdk8.0.172-linux_i686.tar.gz"
mkdir /usr/lib/jvm
mv zulu-8.tar.gz /usr/lib/jvm
cd /usr/lib/jvm 
tar -xzvf zulu-8.tar.gz
mv zulu8.30.0.1-jdk8.0.172-linux_i686 zulu-8
sed -i '1 s,^.*$,PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/jvm/zulu-8/bin",' /etc/environment
sed -i -e '$a\' -e 'JAVA_HOME="/usr/lib/jvm/zulu-8"' /etc/environment
