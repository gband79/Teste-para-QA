build:
	docker build -t gabriel/testeqa:latest .

start:
	docker container run rubytester
