FROM ubuntu:jammy
RUN apt-get update && \
  apt-get -y install curl git nano screen unzip wget && \
  curl -sLk https://github.com/yudai/gotty/releases/download/v1.0.1/gotty_linux_amd64.tar.gz | tar xzC /usr/bin && \
  wget https://cdn.azul.com/zulu/bin/zulu21.34.19-ca-jdk21.0.3-linux_amd64.deb && \
  apt-get -y install ./zulu21.34.19-ca-jdk21.0.3-linux_amd64.deb
