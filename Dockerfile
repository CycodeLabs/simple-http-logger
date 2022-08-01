FROM python:3.8.2-alpine

COPY server.py /app/
WORKDIR /app

ENTRYPOINT ["python", "server.py"]
