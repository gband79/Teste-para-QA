build:
	docker build -t rubytester:latest .

start:
	docker container run rubytester
