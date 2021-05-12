# STEP : 1 Ubuntu �ֽ� ���̽� �̹��� ����

FROM ubuntu:latest

# STEP : 2 ����� ����Ҹ� ����īī���� ����

RUN sed -i 's/archive.ubuntu.com/ftp.daumkakao.com/g' /etc/apt/sources.list

# STEP : 3 Nginx ��ġ�� ���� ��ɾ� ����

RUN apt-get update && apt-get install -y -q nginx

# STEP : 4 ȣ��Ʈ�� �ִ� index.html�� �����̳� ������ ����

COPY index.html /var/www/html

# STEP : 5 Nginx ���� ����

CMD ["nginx", "-g", "daemon off;"]
