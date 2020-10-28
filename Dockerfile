FROM python:3.8-slim-buster

ARG GIT_HASH
ENV GIT_HASH=${GIT_HASH:-dev}
# "-dev" specifies the default

COPY . /src

RUN pip install -r /src/requirements.txt
