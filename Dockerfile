FROM python:2.7

EXPOSE 8080

ENV NEW_RELIC_LICENSE_KEY=''
ENV NEW_RELIC_CONFIG_FILE='newrelic.ini'

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY hello ./hello
COPY manage.py .
COPY db.sqlite3 .
COPY newrelic.ini .

CMD ["newrelic-admin", "run-program", "manage.py", "runserver", "0.0.0.0:8080"]
