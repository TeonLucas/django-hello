# django-hello
Simple Django app with New Relic Python agent

## How to build docker image
If you require a proxy, configure this in newrelic.ini first.  Then build the Docker image as follows:
```sh
docker build -t django-hello .
```

## How to configure monitoring
Monitoring is enabled by setting the `NEW_RELIC_LICENSE_KEY` environment variable on the Docker run command.


## How to run the container
To run the server on localhost:8080 use the following command:
```sh
docker run --rm --name=django -p 8080:8080 -e NEW_RELIC_LICENSE_KEY=YOUR_LICENSE_KEY_HERE django-hello
```
