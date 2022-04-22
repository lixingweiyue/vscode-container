FROM python:3.8-slim

RUN pip install Flask

WORKDIR /app

ADD . /app

CMD ["python", "app.py"]