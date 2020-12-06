FROM python:3.7
#ENV DB_URI=${DB_URI}
#ENV KEY=${KEY}
WORKDIR /classgen
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5001
ENTRYPOINT ["gunicorn","-workers=2", "-b", "0.0.0.0:5001", "app:app"]