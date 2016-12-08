# Docker image to test Puppet manifests
FROM debian:jessie

MAINTAINER OMBU

RUN apt-get -qq update && apt-get install -y ssh vim puppet

VOLUME ["/etc/puppet"]

WORKDIR /etc/puppet

ENTRYPOINT ["puppet"]
