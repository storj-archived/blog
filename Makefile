VERSION := $(shell utils/version)
export VERSION

BRANCH_NAME ?= $(shell git rev-parse --abbrev-ref HEAD)
SANITIZED_BRANCH_NAME ?= $(shell echo $${BRANCH_NAME} | tr : __)
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
ifeq (${BRANCH_NAME}, master)
build:
	docker build -t storjlabs/blog:${TAG} .
else
build:
	docker build --build-arg hugo_args='-D' -t storjlabs/blog:${TAG} .
endif

.PHONY: push
ifeq (${BRANCH_NAME},master)
push:
	docker push storjlabs/blog:${TAG}
	docker tag storjlabs/blog:${TAG} storjlabs/blog:$(shell echo '$${VERSION%.*}')
	docker tag storjlabs/blog:${TAG} storjlabs/blog:$(shell echo '$${VERSION%%.*}')
	docker push storjlabs/blog:$(shell echo '$${VERSION%.*}')
	docker push storjlabs/blog:$(shell echo '$${VERSION%%.*}')

else
push:
	docker push storjlabs/blog:${TAG}
endif

.PHONY: deploy
deploy:
	-kubectl --context ${CLUSTER} -n websites patch deployment ${DEPLOYMENT}-blog \
	-p'{"spec":{"template":{"spec":{"containers":[{"name":"www","image":"storjlabs/blog:${TAG}"}]}}}}'

.PHONY: clean
clean:
	-docker rmi storjlabs/blog:${TAG}
