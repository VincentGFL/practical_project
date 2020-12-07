FROM python:3.7
WORKDIR /healthgen
COPY ./requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 5003
#ENTRYPOINT ["python3", "app.py"]
ENTRYPOINT ["gunicorn","-b", "0.0.0.0:5003", "app:app"]