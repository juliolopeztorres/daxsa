FROM node:lts

WORKDIR /srv/app

RUN adduser node www-data

COPY ./ .
RUN chown node:node -R .

EXPOSE 4200

USER node
