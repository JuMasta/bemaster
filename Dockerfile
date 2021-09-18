# syntax=docker/dockerfile:1
FROM python:3.9
COPY . .
RUN pip3 install -r requirements.txt
RUN python3 manage.py migrate
RUN python3 manage.py makemigrations
RUN python manage.py shell < createsuperuser.py 
CMD ["python3", "manage.py" ,"runserver","0.0.0.0:80"]
