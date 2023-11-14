IMAGE_NAME := nazarsky/unrar
IMAGE_VERSION := 6.24.0-debian
DOCKERFILE := Dockerfile
PLATFORMS := linux/amd64,linux/arm64

all: build_and_push

build_and_push:
	docker buildx build --push --platform $(PLATFORMS) --tag $(IMAGE_NAME):$(IMAGE_VERSION) -f $(DOCKERFILE) . 
	# git tag -a $(IMAGE_VERSION) -m $(IMAGE_VERSION)

.PHONY: build_and_push
