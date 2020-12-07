FROM python:3.7
WORKDIR /frontend
COPY ./requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 5000
ENTRYPOINT ["python3", "app.py"]
#ENTRYPOINT ["gunicorn","-b", "0.0.0.0:5000", "app:app"]