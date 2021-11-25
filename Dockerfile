FROM golang:buster

WORKDIR /code

RUN mkdir /etc/sillyGirl && mkdir /sillyGirl && pwd && ls \
    && wget https://github.com/892947707/Build_sillyGirl/releases/download/main/sillyGirl_linux_arm64 \
    && ls && mv sillyGirl_linux_arm64 /sillyGirl/sillyGirl \
    && cd /sillyGirl && chmod 777 sillyGirl && ls -l \
    && go install github.com/br0xen/boltbrowser@2.1

CMD [ "/sillyGirl/sillyGirl" ]