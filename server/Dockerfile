# 사용할 Node.js 이미지를 선택합니다.
FROM node:16

# 앱 디렉토리를 생성하고 작업 디렉토리로 설정합니다.
WORKDIR /app

# package.json 및 package-lock.json 파일을 복사하여 종속성을 설치합니다.
COPY package*.json ./

RUN npm install
RUN npm install -g pm2@latest

# 앱 소스 코드를 복사합니다.
COPY . .

EXPOSE 3000

# 개발 서버 실행을 위해 nodemon을 사용합니다.
CMD ["pm2-runtime", "start", "app.js"]
