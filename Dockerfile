
FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y python3 python3-pip python3-dev build-essential

COPY requirements.txt /usr/src/app
RUN pip3 install --no-chache-dir -r /usr/src/app/requirements.txt

COPY app.py /usr/src/app

EXPOSE 5000

CMD ["python3", "/usr/src/app/app.py"]



