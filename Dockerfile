# syntax=docker/dockerfile:1
FROM python:3.9-alpine
WORKDIR .
COPY . .
RUN pip3 install -r requirements.txt
CMD ["python3", "manage.py" ,"runserver","185.46.8.254:80"]
