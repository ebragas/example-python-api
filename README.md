# example-python-api
Example Dockerized Python API

Just a personal reference for Dockerizing a simple python application.

## Setup
### Run app locally
```bash
python3 -m venv env
source env/bin/activate
pip install -r requirements.txt
python app.py
```


### Build Docker image
Quick build (local development)
```bash
docker build -t movie-recommender .
```

Build using `GIT_HASH` arg (automated builds).
```bash
export GIT_HASH=$(git rev-parse HEAD)
docker build --build-arg GIT_HASH=${GIT_HASH::7} -t movie-recommender .
```

* Uses only first 7 characters of the git hash.

Check git hash.
```bash
docker run --rm movie-recommender env | grep GIT_HASH
```

### Run Docker image
```bash
docker run --rm -p 8888:8888 movie-recommender python app.py
```

## References
* https://www.pybootcamp.com/blog/how-to-containerize-python-application/
* https://www.pybootcamp.com/blog/how-to-write-dockerfile-python-apps/
