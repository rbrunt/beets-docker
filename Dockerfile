FROM python:3.13

COPY requirements.txt .

RUN pip install -r requirements.txt 

ENTRYPOINT beet