- NameNode
1. Configurar hamachi y logearse a red
2. Descargar los archivos de configuracion
3. Run save-hosts.sh <fileName> (revisar permiso de ejecucion)
4. Delete ip por default en /etc/hosts
5. Run install-packages.sh
6. Descargar una version estable de Java 1.8 JDK
7. Descargar una version estable de Hadoop 2.6.5
8. Dar privilegios al usuario en comun (hdc) usando visudo manual
9. Run java-conf.sh
10. Cambiar al usuario comun y a gregar path de java a bashrc
	export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_201
	export PATH=$PATH:$JAVA_HOME/bin
	no olvidar el source

