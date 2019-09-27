# Docker Tutorial

## Building the Image

### dev

docker build -f Dockerfile.dev .

### prod

docker build .

## Running the Image

docker run -p 8080:80 <image id>
(80 is default port for nginx)
