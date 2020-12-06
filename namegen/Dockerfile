FROM python:3.7
WORKDIR /namegen
RUN apt-get update && apt-get install -y python3-pip
COPY ./requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 5002
#ENTRYPOINT ["python3", "app.py"]
ENTRYPOINT ["gunicorn","-w", "2", "-b", "0.0.0.0:5002", "app:app"]