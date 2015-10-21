
FROM ubuntu

MAINTAINER aki tangxm90@gmail.com
RUN apt-get clean
RUN apt-get update

RUN apt-get install -y software-properties-common
RUN apt-get install -y python-software-properties
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
RUN apt-get install -y oracle-java8-installer

EXPOSE 12345
RUN apt-get install -y wget 
RUN cd 
RUN wget http://test.loqunbai.com/qunbai-search.jar

ENTRYPOINT java -jar qunbai-search.jar
