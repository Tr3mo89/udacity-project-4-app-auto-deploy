FROM fedora:latest

# Copy files of the udacity-cloud-devops-engineer project
#COPY . /project

#WORKDIR /project

#CMD ["ls", "-la"]

RUN yum install -y tar gzip unzip

RUN yum install -y ansible

# Install aws-cli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    sudo ./aws/install
