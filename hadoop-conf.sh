#!/bin/bash
#$1 hadoop installer $2 es un usuario comun
sudo tar -xvf $1 -C /usr/local &&
sudo ln -s /usr/local/hadoop-2.6.5 /usr/local/hadoop &&
sudo chown -R $2:$2 /usr/local/hadoop* &&
echo "export HADOOP_INSTALL=/usr/local/hadoop" >> ~/.bashrc &&
echo $'export PATH=$PATH:$HADOOP_INSTALL/bin' >> ~/.bashrc &&
echo $'export PATH=$PATH:$HADOOP_INSTALL/sbin' >> ~/.bashrc &&
source ~/.bashrc


~                                                   
