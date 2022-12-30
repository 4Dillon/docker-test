'''
FROM python:3.8.10

COPY . /app
WORKDIR /app
COPY requirements.txt requirements.txt
RUN python -m pip install -r requirements.txt 

ENTRYPOINT ["python", "main.py"]
'''
'''
FROM ubuntu:22.04

WORKDIR /var/www/html/
COPY files/index.html .

RUN apt-get update
RUN apt-get install nginx -y

EXPOSE 80:80
CMD ["nginx","-g","daemon off;"]
'''
