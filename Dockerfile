FROM ubuntu:latest
WORKDIR /app
COPY requirements.txt /app/
COPY manage.py /app/
RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN pip install -r requirements.txt

ENTRYPOINT [ "python3" ]
CMD [ "manage.py, "runserver","0.0.0.0:8000" ]






