#!/bin/bash

echo 'Adding cassandra repository ...'
echo 'Writing to /etc/apt/sources.list'
echo -e '\n#Apache Cassandra repository' >> /etc/apt/sources.list
echo 'deb http://www.apache.org/dist/cassandra/debian 10x main' >> /etc/apt/sources.list
echo 'deb-src http://www.apache.org/dist/cassandra/debian 10x main' >> /etc/apt/sources.list

echo 'Fetching gpg keys'
gpg --keyserver wwwkeys.pgp.net --recv-keys 4BD736A82B5C1B00  
echo 'Adding GPG key'
sudo apt-key add ~/.gnupg/pubring.gpg
echo 'Updating database ...'
sudo apt-get update
echo 'Installing cassandra'
sudo apt-get install cassandra -y

echo 'To start cassandra server run : sudo cassandra -f'
