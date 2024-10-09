FROM alpine:latest

RUN apk add curl unzip

RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python

RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip && rm -rf awscli-bundle.zip
RUN ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

ENTRYPOINT ["aws","configure"]

