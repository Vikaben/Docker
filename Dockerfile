FROM python:3.9-alpine 
MAINTAINER vika <vikab125@gmail.com>
WORKDIR /usr/src/app
RUN apk update 
RUN apk add py3-pip
RUN apk add python3 
COPY requirements.txt ./
COPY app.py .
RUN python3 -m pip install -r requirements.txt
CMD [ "python", "app.py" ]
EXPOSE 5000
