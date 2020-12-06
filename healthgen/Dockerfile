FROM python:3.7
#ENV DB_URI=${DB_URI}
#ENV KEY=${KEY}
WORKDIR /healthgen
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5003
ENTRYPOINT ["gunicorn","-w", "4", "-b", "0.0.0.0:5003", "app:app"]