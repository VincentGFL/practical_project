FROM python:3.7
ENV DB_URI=${JDB_URI}
ENV KEY=${KEY2}
WORKDIR /classgen
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5001
ENTRYPOINT ["python", "app.py", "create.py"]