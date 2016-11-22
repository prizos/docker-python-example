FROM ubuntu:16.04

#We are just setting a variable to create some directories from
ENV PROJECT_NAME myproject

#Installing the bare minimum packages for a python environment and then cleaning up a bit after our selves, if you want more packages just add them.
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    python \
    python-dev \
    python-pip \
    git \
 && rm -rf /var/lib/apt/lists/*

#Creating a project directory
RUN mkdir /usr/local/$PROJECT_NAME
#Adding our requirments.txt into the docker container
COPY requirments.txt /usr/local/$PROJECT_NAME/requirments.txt
#Executing the pip installation
RUN pip install -r /usr/local/$PROJECT_NAME/requirments.txt
#Part of the reason to seperate this into seperate RUN and COPY steps, is because Docker caches steps, so if you only need new pip packages, you don't need to reinstall python
