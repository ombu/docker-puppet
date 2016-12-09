# Docker image to test Puppet manifests
FROM ubuntu:14.04

MAINTAINER OMBU

# Add a group that assumed available by our manifests because it's available in
# the Canonical AWS Ubuntu images
RUN groupadd admin

RUN apt-get -qq update && apt-get install -y ssh vim puppet

VOLUME ["/etc/puppet"]

WORKDIR /etc/puppet
