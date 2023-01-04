# TAG ?= $(shell git log --format="%H" -n 1)
TAG=stable

build:
	docker build --tag ghcr.io/orrn/tools:${TAG} -f Dockerfile .