FROM jenkins/ssh-slave

LABEL "org.label-schema.vendor"="OPOTEL Ltd" \
    version="1.0" \
    maintainer="dev@opotel.com" \
    description="Build, Test and Deploy as Docker image Python 3.7 apps"
# Python Version    
ARG ver=3.5  

#Install Docker
RUN curl -sSL https://get.docker.com/ | sh
RUN apt-get update && apt-get install -y \
    software-properties-common
    
RUN apt-get update \
    && apt-get dist-upgrade -y \
    && apt-get -y install python"${ver}" \
       libffi-dev \
       libpq-dev \
       libssl-dev \
       python3-dev \
       python3-pip \
       python3-setuptools \
       python3-venv \
       python3-wheel \
       build-essential \
    && rm -rf /var/lib/apt/lists/* \
    && ln -nsf /usr/bin/python3.7 /usr/bin/python
     
RUN pip3 install numpy
