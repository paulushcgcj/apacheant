FROM alpine:3.5
MAINTAINER Paulo Gomes da Cruz Junior <paulushc@gmail.com>

#Create Ant Dir
RUN mkdir -p /opt/ant/
#Download And 1.9.8
RUN wget http://archive.apache.org/dist/ant/binaries/apache-ant-1.9.8-bin.tar.gz -P /opt/ant
#Unpack Ant
RUN tar -xvzf /opt/ant/apache-ant-1.9.8-bin.tar.gz -C /opt/ant/
# Remove tar file
RUN rm -f /opt/ant/apache-ant-1.9.8-bin.tar.gz
#Install JDK 1.7
RUN apk --update add openjdk7
#Install GIT
RUN apk --update add git
#Setting Ant Home
ENV ANT_HOME=/opt/ant/apache-ant-1.9.8
#Setting Ant Params
ENV ANT_OPTS="-Xms256M -Xmx512M"
#Updating Path
ENV PATH="${PATH}:${HOME}/bin:${ANT_HOME}/bin"
