# docker-python-example
Example repository for python in docker
To build "docker build -t docker-python-example ."
To run "docker run docker-python-example -it /bin/bash"
To run and pass a local directory into the container: "docker run -v /Users/petrosrizos/sourcecode:/usr/local/sourcecode docker-python-example"

Keep in mind that anything not in the Dockerfile or in the local directory on your laptop is not persistant and can get lost.
Anything you want as a long term part of the project, should ideally go into the Dockerfile, while more transient parts you are working on like source code can go on the local directory to be rapidly iterated.
If you make changes to the Dockerfile you need to run the build command again.

You can exit your container with exit, each container is unique and changes do not generally persist between containers.
You can see what containers you have running by typing "docker ps" and stop them via "docker stop containerName"

On occasion old images and containers build up on your laptop, you can clean them up via the commands found here:
https://techoverflow.net/blog/2013/10/22/docker-remove-all-images-and-containers/
