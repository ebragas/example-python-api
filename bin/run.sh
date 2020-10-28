# !/bin/bash
set -ex

docker run --rm -p 8888:8888 movie-recommender python app.py
