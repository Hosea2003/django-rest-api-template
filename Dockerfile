FROM python:3.13-alpine

ENV PYTHONBUFFERED 1

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

# Install PostgreSQL client to use pg_isready
RUN apk update && apk add postgresql-client

# entrypoint
COPY entrypoint.sh .

RUN chmod +x entrypoint.sh

COPY . /app/

# run entrypoint
ENTRYPOINT ["sh", "/app/entrypoint.sh"]

EXPOSE 8000