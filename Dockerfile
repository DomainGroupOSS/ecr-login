FROM alpine:3.5

RUN apk -Uuv add groff less python py-pip 
RUN pip install awscli
RUN apk --purge -v del py-pip
RUN rm /var/cache/apk/*

RUN apk --no-cache add --repository http://dl-cdn.alpinelinux.org/alpine/edge/main libseccomp
RUN apk --no-cache add --repository http://dl-cdn.alpinelinux.org/alpine/edge/community docker

