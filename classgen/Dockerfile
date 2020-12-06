FROM python:3.7
#ENV DB_URI=${DB_URI}
#ENV KEY=${KEY}
WORKDIR /classgen
COPY ./requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 5001
ENTRYPOINT ["python", "app.py"]
#ENTRYPOINT ["gunicorn","-w", "2", "-b", "0.0.0.0:5001", "app:app"]