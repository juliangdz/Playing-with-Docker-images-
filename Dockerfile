FROM ubuntu:latest
LABEL tag : "v1.0"
LABEL maintainer : "xyz"
LABEL author : "xyz"
RUN echo "Welcome to XYX Docker Space"
RUN apt-get update 
#updates have to be done after pulling the image this is because the image that has been pulled does not have all the required layers for the installations so this is a necessary step

RUN echo "Updates have been done "
RUN apt-get install -y python3-pip
RUN echo "Python3 has been installed "
RUN apt-get update
RUN apt-get install  -y git
RUN echo " ALL is Done now Wait for Magic " 

