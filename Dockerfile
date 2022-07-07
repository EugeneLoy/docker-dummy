FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8-alpine3.10

WORKDIR /root

COPY main.py main.py

ENTRYPOINT uvicorn main:app --host 0.0.0.0 --port 80
