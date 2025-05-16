FROM python:3.12-slim

WORKDIR /home/app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . /home/app

EXPOSE 5000

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

CMD ["flask", "run"]