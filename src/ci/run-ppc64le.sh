#!/bin/sh
cat /etc/os-release
ldd --version
whoami
cat /etc/hosts
hostname
ip addr show
echo 'deb http://ftp.unicamp.br/pub/ppc64el/ubuntu/14_04/docker-1.6.2-ppc64el/ trusty main' | sudo tee /etc/apt/sources.list.d/docker.list;
sudo apt-get update
sudo apt-get install --force-yes docker.io
mkdir ${HOME}/docker
src/ci/docker/run.sh $IMAGE;
