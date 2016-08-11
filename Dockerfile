FROM node:latest
MAINTAINER coder <coder@1dea.ru>

# DEPENDENCIES

# rvm with compass
# RUN gpg --keyserver keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 && \
#	curl -L https://get.rvm.io | bash -s stable --ruby --gems=compass && \
#	/bin/bash -l -c "rvm use"

# bower, grunt
RUN npm install -g bower && \
    npm install -g grunt-cli && \
    npm install -g mocha && \
    npm cache clear

# /DEPENDENCIES

ENV NODE_ENV production

RUN mkdir /app
WORKDIR /app

ADD package.json /app/package.json

RUN cd /app && npm install

EXPOSE 9999

CMD ["node", "app.js"]
