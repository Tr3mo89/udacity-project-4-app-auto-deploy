FROM ubuntu:latest

RUN apt update

# Install dependencies
RUN apt install -y unzip curl tar python3

# to install software without waiting for interaktion => configure tzdata
ARG DEBIAN_FRONTEND=noninteractive

RUN apt install -y nodejs npm

RUN apt install -y ansible

# Install aws-cli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install
