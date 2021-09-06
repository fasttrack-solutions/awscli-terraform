FROM ubuntu:20.04
LABEL maintainer="Fasttrack solutions"
ENV TERRAFORM_VERSION=0.11.11

RUN apt-get update \
    && apt-get install -y \
    apt-utils \
    wget \
    unzip \
    python \
    groff \
    less

RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && mv terraform /usr/local/bin/
RUN wget https://bootstrap.pypa.io/get-pip.py && python get-pip.py
RUN pip install awscli --upgrade

