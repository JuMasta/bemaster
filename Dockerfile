#docker/dockerfile:1
FROM python:3.9
ARG superuser=admin
ARG password=admin
ARG email=admin
ENV DJANGO_SUPERUSER_USERNAME=${superuser}
ENV DJANGO_SUPERUSER_PASSWORD=${password}
ENV DJANGO_SUPERUSER_EMAIL=${email}
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
ENTRYPOINT ["./entrypoint.sh"]
