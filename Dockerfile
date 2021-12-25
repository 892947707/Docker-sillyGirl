FROM golang:alpine

WORKDIR /sillyGirl

ENV TZ=Asia/Shanghai
ENV LANG C.UTF-8

RUN mkdir /etc/sillyGirl \
    && wget https://github.com/892947707/Build_sillyGirl/releases/download/main/sillyGirl_linux_amd64 \
    && mv sillyGirl_linux_amd64 sillyGirl \
    && chmod 777 sillyGirl \
    && go install github.com/br0xen/boltbrowser@2.1 \
    && mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

CMD [ "/sillyGirl/sillyGirl" ]