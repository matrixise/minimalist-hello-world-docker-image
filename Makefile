.PHONY: build run

hello-world:
	go build hello-world.go

hello-world.tgz: hello-world
	tar cfz hello-world.tgz hello-world

build: hello-world.tgz
	docker image import hello-world.tgz minimalist-hello-world

run:
	docker run --rm -it minimalist-hello-world /hello-world
	
