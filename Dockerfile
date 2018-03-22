# Use vinsdocker base image
FROM joyesong/jmeter3.2base
MAINTAINER joyesong@qq.com

# Ports to be exposed from the container for JMeter Slaves/Server
EXPOSE 1099 5000

# Application to run on starting the container
ENTRYPOINT $JMETER_HOME/bin/jmeter-server \
                        -Dserver.rmi.localport=5000 \
                        -Dserver_port=1099
