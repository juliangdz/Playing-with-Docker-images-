# Playing-with-Docker-images-
![Docker Play](/images/Logo.png)

I have written a bash script if you would want to install Docker and use Docker Image as a virtual Machine. 

Using Docker Ubuntu as a VM is so much better as you get to have root privelages and installing packages without altering your system packages can be done with ease.

###### Inorder to Build a Docker Image from Scratch 

[follow the following steps] 
 1. After installing docker using the script , go to your WORKDIR and create a DOCKERFILE. [DOCKERFILE sample has been provided in my repo]

 2. I Guess the Dockerhub documentation is a bit cubersome and takes time to go through each functionality. I will go through some basics :
    * 2a *Always start with a **From <image name >**  , what this statement does is it will pull an image from the docker hub . Lets say if you want to build a docker image with the base image as an Ubuntu image , we can write it as : **From ubuntu:latest** .*
    
    * 2b *You Can Use **LABEL** and assign tags, mantainers, authors , this helps keep track of things . For example **LABEL maintainer : "xyz@g.com"** .*

    * 2c *This next command will help you create directories, make installation, clone repos, etc. The **RUN** command just does this. For example you can run a command like : **RUN apt-get install python3-pip** to install python3-pip*
  
 3. Once you have created your simple DOCKERFILE , open the Terminal and cd to the directory where the DOCKERFILE is present. For example, if your DOCKERFILE is in /home/xyz/Downloads/ then execute the command _cd /home/xyz/Downloads/_ in your terminal. Again run the Command **docker build ./** - this will take care of the rest and you will see Successfully built image with an _12sfs3423d_ ID. Copy that ID number and Run in the terminal **docker run -it <ID Number>**. 

>I will attach the link to the official dockerhub documentaion for creating a DOCKERFILE [https://docs.docker.com/engine/reference/builder/].



## Enjoy
