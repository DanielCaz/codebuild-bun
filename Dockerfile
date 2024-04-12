FROM amazonlinux:2

RUN yum install -y unzip python3 python3-pip

RUN curl -fsSL https://bun.sh/install | bash

# Copy bun binaries to /usr/local/bin which is in the PATH so we can run bun from anywhere
RUN cp /root/.bun/bin/* /usr/local/bin

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install