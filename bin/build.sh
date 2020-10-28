# !/bin/bash
set -ex

export GIT_HASH=$(git rev-parse HEAD)
docker build --build-arg GIT_HASH=${GIT_HASH::7} -t movie-recommender .
