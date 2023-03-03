FROM python:3.9

RUN mkdir /app

COPY requirements.txt /app
COPY index.html /app
COPY server.py /app


RUN pip install -r /app/requirements.txt

EXPOSE 80

WORKDIR /app

CMD ["python", "server.py"]