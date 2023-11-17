# This is the base image we will use to create our custom docker image
FROM ubuntu:latest
 
#
# the maintainer of an image
LABEL maintainer="name@company.com"
 
#
# Install the tools (sudo)
RUN apt-get update && apt-get upgrade -y && apt install sudo tasksel -y
