FROM golang:buster

WORKDIR /sillyGirl

ENV TZ=Asia/Shanghai

RUN mkdir /etc/sillyGirl \
    && wget https://github.com/892947707/Build_sillyGirl/releases/download/main/sillyGirl_linux_amd64 \
    && mv sillyGirl_linux_amd64 sillyGirl \
    && chmod 777 sillyGirl \
    && go install github.com/br0xen/boltbrowser@2.1

CMD [ "/sillyGirl/sillyGirl" ]