# syntax=docker/dockerfile:1
FROM scratch
RUN sudo apt update ; sudo apt install software-properties-common ; sudo add-apt-repository ppa:deadsnakes/ppa ; sudo apt update  ; sudo apt install python3.9
WORKDIR .
COPY . .
RUN pip3 install -r requirements.txt
CMD ["python3", "manage.py" ,"runserver","185.46.8.254:80"]
