FROM php:alpine


ENV PLEX_URL="http://localhost:32400"
ENV PLEX_PORT=32400
ENV PLEX_TOKEN=
ENV PLEX_SSL="false"

#Updates everything
RUN apk update && apk add --no-cache git

#Clones git repo (content) into /var/www/html
WORKDIR /app
RUN git clone https://github.com/rxwatcher/plex-library-html .

#Copies entrypoint-script for modifying .env-file
COPY build/entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
