FROM python:3.7
#ENV DB_URI=${DB_URI}
#ENV KEY=${KEY}
WORKDIR /healthgen
COPY ./requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 5003
ENTRYPOINT ["python", "app.py"]
#ENTRYPOINT ["gunicorn","-w", "2", "-b", "0.0.0.0:5003", "app:app"]