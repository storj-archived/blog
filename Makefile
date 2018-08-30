VERSION := $(shell utils/version)
export VERSION

BRANCH_NAME ?= $(shell git rev-parse --abbrev-ref HEAD)
ifeq (${BRANCH_NAME},master)
TAG := ${VERSION}
else
TAG := ${VERSION}-${BRANCH_NAME}
endif


.PHONY: build
build:
	docker build -t storjlabs/blog:${TAG} .
	docker build -t storjlabs/blog-redirect:${TAG} -f redirect/Dockerfile .

.PHONY: push
ifeq (${BRANCH_NAME},master)
push:
	docker push storjlabs/blog:${TAG}
	docker tag storjlabs/blog:${TAG} storjlabs/blog:$(shell echo '$${VERSION%.*}')
	docker tag storjlabs/blog:${TAG} storjlabs/blog:$(shell echo '$${VERSION%%.*}')
	docker push storjlabs/blog:$(shell echo '$${VERSION%.*}')
	docker push storjlabs/blog:$(shell echo '$${VERSION%%.*}')
	docker push storjlabs/blog-redirect:${TAG}
	docker tag storjlabs/blog-redirect:${TAG} storjlabs/blog-redirect:$(shell echo '$${VERSION%.*}')
	docker tag storjlabs/blog-redirect:${TAG} storjlabs/blog-redirect:$(shell echo '$${VERSION%%.*}')
	docker push storjlabs/blog-redirect:$(shell echo '$${VERSION%.*}')
	docker push storjlabs/blog-redirect:$(shell echo '$${VERSION%%.*}')
else
push:
	docker push storjlabs/blog:${TAG}
	docker push storjlabs/blog-redirect:${TAG}
endif

.PHONY: clean
clean:
	-docker rmi storjlabs/blog:${TAG}
	-docker rmi storjlabs/blog-redirect:${TAG}

.PHONY: run-redirect
run-redirect:
	docker run --rm -it -p 80:80 --name redirect storjlabs/blog-redirect:${TAG}
