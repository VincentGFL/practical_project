FROM python:3.7
ENV DB_URI=${DB_URI}
WORKDIR /practical_project
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY . .