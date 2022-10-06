NameNode
1. Configurar hamachi y logearse a red (cluster-cloud-unsa:123456)
2. Descargar los archivos de configuracion (entrar como root)
3. Run save-hosts.sh <Nombre archivo de maquinas en cluster> (revisar que tengan permiso de ejecucion)
4. Delete ip por default en /etc/hosts
5. Run install-packages.sh
6. (obviar en slave)Descargar una version estable de Java 1.8 JDK (https://www.oracle.com/java/technologies/javase/javase8-archive-downloads.html)
7. (obviar en slave)Descargar una version estable de Hadoop 2.6.5 (http://archive.apache.org/dist/hadoop/common/hadoop-2.6.5/)
8. Dar privilegios al usuario en comun (hdc) usando visudo manual
9. Run java-conf.sh
10. Cambiar al usuario comun y agregar path de java a bashrc
	export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_201
	export PATH=$PATH:$JAVA_HOME/bin
	--no olvidar hacer source
11. Run hadoop-conf.sh
12. Generate public/private rsa key (ssh-keygen -t rsa -P "")
13. Configuracion inicial para otros nodos slaves
13. Copy id between machines (ssh-copy-id -i $HOME/.ssh/id_rsa.pub <user@ip>)
14. Copy public key to same machine (cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys)
15. Enviar java y hadoop files via ssh to all nodes (scp file user@ip:/tmp)

Slaves
1. Configurar hamachi y logearse a red (cluster-cloud-unsa:123456)
2. Descargar los archivos de configuracion (entrar como root)
3. Run save-hosts.sh <Nombre archivo de maquinas en cluster> (revisar que tengan permiso de ejecucion)
4. Delete ip por default en /etc/hosts
5. Run install-packages.sh
6. Dar privilegios al usuario en comun (hdc) usando visudo manual
7. Generate public/private rsa key (ssh-keygen -t rsa -P "")
8. Copy id between machines (ssh-copy-id -i $HOME/.ssh/id_rsa.pub <user@ip>)
9. Copy public key to same machine (cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys)
10. run java-conf.sh con sus respectivos parametros
11. ownership o folder jdk (sudo chown -R hdc:hdc jdk.. )
11. run hadoop-con.sh con sus respectivos parametros

Cluster setup
m1 NN,DN,RM,NM
m2 DN,NM, SNN
m3 NM,DN (add more as this)
...

Be sure to config before formating
/usr/local/hadoop/etc/hadoop
core-site.xml
mapred-site.xml.template mv to mapred-site.xml
hdfs-site.xml (replication based on number of datanodes)(NN saving create abc manually)(DN saving create abc manually)(NM port)(SNM port)(checkpoint se escribe en la maquina donde se encuentra el SNM)
yarn-site.xml (NM resources can be set manually or let hadoop decide)
slaves (which machines hadoop will run)

copy those files to nodes
mapred-site.xml delete template
hdfs-site.xml delete propertie(namenode dir), change name of datanode as good convention, add dfs.namenode.checkpoint.period<name>600<value> en SNM secondary namenode will save on tmp for default

aplicar en todos los nodos
create /abc directory (sudo mkdir /abc)
cambiar permisos a directory (sudo chown -R hdc:hdc /abc)

formating
Create initial metada en namenode (hdfs namenode -format)

start-all.sh (in case java path not found manually set hadoop-env.sh)





