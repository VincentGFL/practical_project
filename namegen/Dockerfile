FROM python:3.7
WORKDIR /namegen
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5002
ENTRYPOINT ["python", "create.py", "app.py"]