FROM python:3.8-slim-buster

# pass git hash for traceability
ARG GIT_HASH
ENV GIT_HASH=${GIT_HASH:-dev}
# "-dev" specifies the default

WORKDIR /project

# create new user
RUN useradd -m -r user && \
    chown user /project

# install requirements
COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . .

# set user
USER user
