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
```bash
docker build -t movie-recommender .
```

### Run Docker image
```bash
docker run -p 8888:8888 movie-recommender python /src/app.py
```

## References
https://www.pybootcamp.com/blog/how-to-containerize-python-application/