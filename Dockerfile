##################
# BASE IMAGE
##################

FROM node:20-alpine AS base

RUN npm install -g @angular/cli@17

###################
# BUILD FOR LOCAL DEVELOPMENT
###################

FROM base AS development

RUN apk --update add  \
    ca-certificates \
    curl \
    wget \
    git \
    git-flow \
    coreutils \
    procps \
    bash

USER node

WORKDIR /home/node/web

CMD ["tail", "-f", "/dev/null"]
