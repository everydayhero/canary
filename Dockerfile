FROM everydayhero/ubuntu:16.04

EXPOSE 80
CMD ["/app/serve"]

ADD serve /app

RUN apt-get install -y netcat \
  && rm -rf /var/lib/apt/lists/*
