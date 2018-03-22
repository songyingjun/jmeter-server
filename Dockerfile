# Use vinsdocker base image
FROM joyesong/jmeter4.0-base
MAINTAINER joyesong@qq.com
HOST_IP=`ifconfig eth0|grep -w inet|awk '{print $2}'`
# Ports to be exposed from the container for JMeter Slaves/Server
EXPOSE 1099 50000

# Application to run on starting the container
ENTRYPOINT $JMETER_HOME/bin/jmeter-server \
                        -Dserver.rmi.localport=50000 \
                        -Dserver_port=1099 \
                        -Djava.rmi.server.hostname=${HOST_IP}
