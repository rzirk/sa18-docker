FROM python:3.6.5-alpine3.7
WORKDIR /app
RUN apk update && apk add git
RUN git clone https://github.com/betaros/Short-Frontend-Service.git ./FrontendMS
WORKDIR /app/FrontendMS
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]