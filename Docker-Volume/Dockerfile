FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

# 해당 프로젝트에서 파일이 복사되어야 하는 경로
# VOLUME [ "/app/feedback" ]

# nodemon 으로 서버 시작
CMD [ "npm", "start" ]
# CMD [ "node", "server.js" ]