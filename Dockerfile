#Base container image
FROM ubuntu

LABEL description="A custom python application image"

MAINTAINER shalaka nikam

#Running commands to form layer on base image layer.Both Run commands on same line to avoid extra layer.
RUN apt-get update &&  apt-get install python

#Adding source file that is calendar.py to container's /home location.
ADD calendar.py /home/calendar.py

#Cmd provides provides the default arguments for the Entrypoint instruction.
CMD ["/home/calendar.py"]

#Entrypoint specifies the default command to execute when the container is created.
ENTRYPOINT ["python"]



