FROM ubuntu:18.04
RUN sudo su - 
RUN apt update && install openjdk-8-jdk
RUN wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add - && sudo sh -c  'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/kenkins.list'
RUN apt update && apt install jenkins

RUN curl -fsSL get.docker.com | /bin/bash
RUN usermod -aG docker jenkins && systemctl restart jenkins
