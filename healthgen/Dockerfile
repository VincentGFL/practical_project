FROM python:3.7
ENV DB_URI=${JDB_URI}
ENV KEY=${KEY2}
WORKDIR /healthgen
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5003
ENTRYPOINT ["python", "app.py"]