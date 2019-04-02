all: alluxio
alluxio: build push clean
.PHONY: build push clean

IMAGE_NAME = alluxio
TAG_NAME = chethanuk

build:
	docker build -t $(TAG_NAME)/$(IMAGE_NAME) .

push:
	docker push $(TAG_NAME)/$(IMAGE_NAME)
	
clean:
	docker rmi $(TAG_NAME)/$(IMAGE_NAME)