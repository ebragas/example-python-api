# !/bin/bash
set -ex

export GIT_HASH=$(git rev-parse HEAD)
docker build --buildarg GIT_HASH=${GIT_HASH::7} -t movie-recommender .
