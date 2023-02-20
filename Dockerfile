# Node build and run environment
FROM node:16.7.0 as builder
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ENV PATH /usr/src/app/node_modules/.bin:$PATH
COPY . /usr/src/app
RUN npm install
RUN npm run build
EXPOSE 3000
CMD ["node", "./build/index.js"]