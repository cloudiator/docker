# Docker installation for Cloudiator

## Description

Installation of Cloudiator using Docker (docker-compose).

## Install

* install Docker: https://docs.docker.com/install/
* install docker-compose: https://docs.docker.com/compose/install/
* install git
* git clone the repository: git clone https://github.com/cloudiator/docker.git
* edit the env-template to e.g. to use own API-Key-Token
* cp the env-template to .env: cp env-template .env
* run docker-compose up

## Use

* REST-Server automatically starts on port 9000.
* edit env-template\
  if auth.mode=testmode: \
   user 'testuser' will be generated in userDB and [auth.token] will be its valid Token
   



