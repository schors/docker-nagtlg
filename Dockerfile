FROM golang:1.16
MAINTAINER Phil Kulin <schors@gmail.com>

WORKDIR "/opt"

RUN go get -u github.com/diphost/nagtlg && \
    go install github.com/diphost/nagtlg

COPY etc/config.yml /opt

ENTRYPOINT ["nagtlg"]


