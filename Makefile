VERSION := $(shell utils/version)
export VERSION
BRANCH_NAME ?= $(shell git rev-parse --abbrev-ref HEAD)
SANITIZED_BRANCH_NAME ?= $(shell echo $BRANCH_NAME | tr : __)
ifeq (${BRANCH_NAME},master)
TAG ?= ${VERSION}
CLUSTER ?= prod
DEPLOYMENT ?= storj-io
else
TAG ?= ${VERSION}-${SANITIZED_BRANCH_NAME}
CLUSTER ?= nonprod
DEPLOYMENT ?= staging-storj-io
endif


.PHONY: build
build:
	echo $(BRANCH_NAME)
	echo $(SANITIZED_BRANCH_NAME)
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

.PHONY: deploy
deploy:
	-kubectl --context ${CLUSTER} -n websites patch deployment ${DEPLOYMENT}-blog \
	-p'{"spec":{"template":{"spec":{"containers":[{"name":"www","image":"storjlabs/blog:${TAG}"}]}}}}'
	-kubectl --context ${CLUSTER} -n websites patch deployment blog-${DEPLOYMENT} \
	-p'{"spec":{"template":{"spec":{"containers":[{"name":"blog-redirect","image":"storjlabs/blog-redirect:${TAG}"}]}}}}'

.PHONY: clean
clean:
	-docker rmi storjlabs/blog:${TAG}
	-docker rmi storjlabs/blog-redirect:${TAG}

.PHONY: run-redirect
run-redirect:
	docker run --rm -it -p 80:80 --name redirect storjlabs/blog-redirect:${TAG}
