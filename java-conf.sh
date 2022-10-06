#!/bin/bash
## $1 path del jdk
mkdir /usr/lib/jvm &&
tar -xvf $1 -C /usr/lib/jvm &&
echo "export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_201" >> ~/.bashrc &&
echo $'export PATH=$PATH:$JAVA_HOME/bin' >> ~/.bashrc &&
source ~/.bashrc 


