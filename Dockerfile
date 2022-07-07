FROM python:3.9

WORKDIR /root

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY main.py main.py

ENTRYPOINT uvicorn main:app --host 0.0.0.0
