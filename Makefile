PROJECT  ?= abevoelker/ubuntu
TAG      ?= trusty

ifdef REGISTRY
  IMAGE=$(REGISTRY)/$(PROJECT):$(TAG)
else
  IMAGE=$(PROJECT):$(TAG)
endif

all:
	@echo "Available targets:"
	@echo "  * build - build a Docker image for $(IMAGE)"
	@echo "  * pull  - pull down previous docker builds of $(IMAGE)"

build:
	docker build -t $(IMAGE) .

pull:
	docker pull $(IMAGE) || true

