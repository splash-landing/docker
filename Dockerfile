FROM ubuntu:latest

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update && apt-get -y install build-essential ruby ruby-dev nodejs python git nginx wget
RUN /usr/bin/gem install -V --no-ri --no-rdoc jekyll -v 2.5.3

EXPOSE 4000 443 80
