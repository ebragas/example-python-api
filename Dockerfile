FROM python:3.8-slim-buster

ARG GIT_HASH
ENV GIT_HASH=${GIT_HASH:-dev}
# "-dev" specifies the default

WORKDIR /project

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . .
