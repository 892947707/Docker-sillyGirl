FROM golang:buster

WORKDIR /sillyGirl

RUN mkdir /etc/sillyGirl && cd /sillyGirl \
    && wget https://github.com/892947707/Build_sillyGirl/releases/download/main/sillyGirl_linux_amd64 \
    && ls && mv sillyGirl_linux_amd64 sillyGirl && chmod 777 sillyGirl && ls \
    && go install github.com/br0xen/boltbrowser@2.1
