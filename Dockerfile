FROM alpine:latest
RUN apk update && \
    apk add bash && \ 
    apk add ffmpeg && \
    apk add shadowsocks-libev --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/ && \
    apk add proxychains-ng
COPY . ./app
WORKDIR ./app
CMD bash start.sh
