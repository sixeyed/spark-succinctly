#! /bin/bash

wget --quiet http://mirrors.ukfast.co.uk/sites/ftp.apache.org/hbase/stable/hbase-1.1.2-bin.tar.gz
tar xzf hbase-1.1.2-bin.tar.gz -C /opt/
ln -s /opt/hbase-1.1.2 /opt/hbase

rm hbase-1.1.2-bin.tar.gz

#scala:
wget --quiet http://www.scala-lang.org/files/archive/scala-2.10.5.tgz
tar xvf scala-2.10.5.tgz
mv scala-2.10.5 /usr/lib
ln -s /usr/lib/scala-2.10.5 /usr/lib/scala
rm scala-2.10.5.tgz

#TODO
#export PATH=$PATH:/usr/lib/scala/bin
#export SCALA_HOME=/usr/lib/scala

#sbt:
echo "deb http://dl.bintray.com/sbt/debian /" > /etc/apt/sources.list.d/sbt.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
apt-get update
apt-get install sbt

#spark:
wget --quiet http://apache.mirror.anlx.net/spark/spark-1.4.1/spark-1.4.1-bin-hadoop2.6.tgz
tar xvf spark-1.4.1-bin-hadoop2.6.tgz
mv spark-1.4.1-bin-hadoop2.6 /usr/lib
ln -s spark-1.4.1-bin-hadoop2.6 /usr/lib/spark
rm spark-1.4.1-bin-hadoop2.6.tgz

#TODO
#export PATH=$PATH:/usr/lib/spark/bin