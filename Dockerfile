# Docker image to test Puppet manifests
FROM debian:jessie

MAINTAINER OMBU

WORKDIR /etc/puppet

RUN apt-get -qq update && apt-get install -y ssh vim puppet

