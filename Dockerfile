FROM alpine:latest
RUN apk update && \
    apk add bash && \ 
    apk add ffmpeg
COPY . ./app
WORKDIR ./app
CMD bash start.sh
