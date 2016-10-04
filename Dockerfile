FROM mhart/alpine-node

ENV APP /srv/alpine-node-server
WORKDIR ${APP}

EXPOSE 9000

COPY package.json ${APP}
RUN npm install

COPY . ${APP}
CMD npm start
