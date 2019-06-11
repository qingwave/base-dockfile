FROM centos:7

RUN yum -y update && yum -y install git make wget gcc && \
    yum clean all

ENV GOLANG_VERSION 1.12
RUN mkdir -p /go && chmod -R 777 /go && \
    wget https://golang.org/dl/go$GOLANG_VERSION.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go$GOLANG_VERSION.linux-amd64.tar.gz && \
    rm go${GOLANG_VERSION}.linux-amd64.tar.gz

ENV GOPATH=/go \
    GOROOT=/usr/local/go \
    PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

WORKDIR /go
