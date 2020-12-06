FROM python:3.7
#ENV DB_URI=${DB_URI}
#ENV KEY=${KEY}
WORKDIR /namegen
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5002
ENTRYPOINT ["python", "app.py"]