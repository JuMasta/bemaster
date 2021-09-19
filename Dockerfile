#docker/dockerfile:1
FROM python:3.9
ARG superuser=jumasta
ARG password=6aU2B&j4nO
ARG email=nikbulat97@mail.ru
ENV DJANGO_SUPERUSER_USERNAME=${superuser}
ENV DJANGO_SUPERUSER_PASSWORD=${password}
ENV DJANGO_SUPERUSER_EMAIL=${email}
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
ENTRYPOINT ["./entrypoint.sh"]
