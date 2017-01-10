.PHONY: all clean build save load

all: build save load

clean:
	@docker rmi -f continuul/kubectl > /dev/null 2>&1 | true
	rm -f kubectl.tar

build:
	docker build --no-cache -t continuul/kubectl:latest .

save:
	docker save continuul/kubectl > kubectl.tar

load:
	docker load < kubectl.tar
	docker images
