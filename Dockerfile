FROM node:16.15.0

LABEL author="Lewis Sneddon"

COPY . /var/www
WORKDIR /var/www

ENV NODE_ENV=production
ENV PORT=3000

VOLUME ["/var/www"]

RUN npm install

EXPOSE $PORT

ENTRYPOINT ["npm", "start"]