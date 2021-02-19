# Instructions

## To run locally

Make sure you have Ruby version 2.x

```
bundle install
cucumber
```

## To run in a Docker image

#### Build the image.

```
docker build -t rubytester:latest .
```

Run the image.

```
docker container run rubytester
```
