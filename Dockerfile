FROM jenkins/ssh-slave

LABEL "org.label-schema.vendor"="OPOTEL Ltd" \
    version="1.0" \
    maintainer="dev@opotel.com" \
    description="Build, Test and Deploy as Docker image Python 3.7 apps"
    
RUN curl -sSL https://get.docker.com/ | sh
RUN apt-get update && apt-get install -y \
    software-properties-common
    
RUN apt-get update && apt-get install -y \
     python3.7 \
     python3-pip \
     python3-venv
     
RUN apt-get install -y \
     build-essential \
     libssl-dev \
     libffi-dev \
     python-dev
     
RUN pip3 install numpy
