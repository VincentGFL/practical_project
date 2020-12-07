FROM python:3.7
WORKDIR /classgen
COPY ./requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 5001
#ENTRYPOINT ["python3", "app.py"]
ENTRYPOINT ["gunicorn","-b", "0.0.0.0:5001", "app:app"]