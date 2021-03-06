FROM python:3.6.5-alpine3.7
WORKDIR /app
RUN apk update && apk add git
RUN git clone https://github.com/betaros/Short-Mensa-Service.git .
WORKDIR /app/MensaMS
RUN pip install -r requirements.txt
#EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["app.py"]