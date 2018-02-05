FROM nginx:1.10.3-alpine

RUN apk add --update \
    openjdk8-jre \
    bash \
  && rm -rf /var/cache/apk/*