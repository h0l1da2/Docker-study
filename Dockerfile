FROM node

WORKDIR /app

# 1. 먼저 종속성을 복사하고
COPY package.json /app

# 2. npm install (dependency install) 을 하기 때문에
RUN npm install
# 3. 여기까지 명령어는 소스코드가 변경되어도 캐시에 들어있는 레이어가 무효화되지 않는다. !!

# 소스코드 복사하는 명령어
COPY . /app

EXPOSE 80

CMD ["node", "server.js"]