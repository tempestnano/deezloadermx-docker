FROM node:current-alpine

ADD start-dzldr.sh /

RUN apk update

RUN apk add --no-cache \
    bash \
	ca-certificates \
    wget \
    unzip \
	jq
    
EXPOSE 1730

ENTRYPOINT ["./start-dzldr.sh"]