# STEP : 1 Ubuntu 최신 베이스 이미지 지정

FROM ubuntu:latest

# STEP : 2 우분투 저장소를 다음카카오로 변경

RUN sed -i 's/archive.ubuntu.com/ftp.daumkakao.com/g' /etc/apt/sources.list

# STEP : 3 Nginx 설치를 위한 명령어 실행

RUN apt-get update && apt-get install -y -q nginx

# STEP : 4 호스트에 있는 index.html를 컨테이너 안으로 복사

COPY index.html /var/www/html

# STEP : 5 Nginx 데몬 실행

CMD ["nginx", "-g", "daemon off;"]
