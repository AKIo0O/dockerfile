
FROM ubuntu

MAINTAINER aki tangxm90@gmail.com
RUN apt-get clean
RUN apt-get clean 
#RUN apt-get update
#ADD sources.list /etc/apt/sources.list
RUN apt-get install -y curl 
RUN apt-get install -y vim
RUN apt-get install -y nginx

EXPOSE 80 8000 900

#ENTRYPOINT nginx
