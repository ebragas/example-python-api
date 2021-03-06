FROM python:3.8-slim-buster

# pass git hash for traceability (defaults to "dev")
ARG GIT_HASH
ENV GIT_HASH=${GIT_HASH:-dev}
ENV TINI_VERSION="v0.19.0"

ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini

# update pip, setuptools, and wheel
RUN pip install -U \
    pip \
    setuptools \
    wheel

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

ENTRYPOINT ["/tini", "--"]