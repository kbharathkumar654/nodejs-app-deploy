FROM ubuntu:latest

MAINTAINER kbharathkumar654@gmail.com

RUN apt-get -y update

RUN apt-get install -y tomcat9

RUN apt-get install -y tomcat9-admin

#RUN ln -s /usr/bin/nodejs /usr/bin/node........;;;;;


ADD . /usr/apps/hello-docker/

ADD index.html /usr/apps/hello-docker/index.html

CMD ["http-server", "-s"]
