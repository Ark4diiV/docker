#!/bin/bash
#Собрать болванку ОС на Ubuntu
docker kill jenkins
docker rm jenkins
docker image rm -f jenkins
docker image rm -f ubuntu-openjdk
docker image rm -f ubuntu
docker pull ubuntu:latest
#Собрать болванку с зависимостями из образа выше
docker build -t ubuntu-openjdk:latest -f dockerfiles/env.Dockerfile .
#Загружаем свежую версию Jenkins
wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war
#Собираем финальный образ
docker build -t jenkins:latest -f dockerfiles/jenkins.Dockerfile .
#Прибираем
rm jenkins.war*