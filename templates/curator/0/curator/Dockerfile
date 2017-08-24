FROM ubuntu:16.04

RUN apt-get update && apt-get -y install wget sudo locales-all

RUN wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | apt-key add -

RUN echo 'deb [arch=amd64] http://packages.elastic.co/curator/5/debian stable main' > /etc/apt/sources.list.d/curator.list

RUN apt-get update && apt-get install elasticsearch-curator

ENV LC_ALL=en_US.utf8

ADD entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
