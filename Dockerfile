
FROM alpine AS prebuild

WORKDIR /app

RUN apk add --no-cache openssh-client git

RUN mkdir -p -m 0700 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

RUN --mount=type=ssh,id=ssh_key_private_path,required git clone git@github.com:pawelwojcik7/SimpleWeb.git

FROM node:alpine AS finalbuild

COPY --from=prebuild /app/SimpleWeb /app

WORKDIR /app

RUN npm install

EXPOSE 8080

CMD ["npm", "start"]
