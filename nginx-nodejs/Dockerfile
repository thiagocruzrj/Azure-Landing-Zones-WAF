FROM nginx

LABEL version="1.0.0" description="Container Nginx and NodeJS" maintainer="Thiago Cruz<thagocruz@gmail.com>"

WORKDIR /app

COPY ./start.sh /start.sh
COPY ./app /app

RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash
RUN apt-get install -y nodejs
RUN npm install

ENV PORT=3000

EXPOSE 80

CMD ["/start.sh"]