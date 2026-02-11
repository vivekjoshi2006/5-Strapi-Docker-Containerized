FROM node:20-alpine
RUN apk add --no-cache vips-dev build-base gcc autoconf automake libtool zlib-dev libpng-dev nasm
WORKDIR /opt/app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
ENV NODE_ENV=production
RUN npm run build
EXPOSE 1337
CMD ["npm", "run", "develop"]