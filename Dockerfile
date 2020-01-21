FROM node:latest AS build

# production = false; development = true
ENV ROLLUP_WATCH=false

WORKDIR /app
COPY . /app

RUN npm install
RUN npm run build


FROM nginx:latest

EXPOSE 443
EXPOSE 80

COPY docker/nginx.conf /etc/nginx/nginx.conf
COPY docker/certs /etc/nginx/certs

RUN if ! [ -f "/etc/nginx/certs/cert.crt" ] || ! [ -f "/etc/nginx/certs/cert.key" ]; then printf "\n\nPlease generate a certificate and store it under docker/certs\n\nPublic:\t\tcert.crt\nPrivate:\tcert.key\n\n" && exit 1; fi

COPY --from=build /app/public /app