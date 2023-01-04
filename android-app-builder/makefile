# TAG ?= $(shell git log --format="%H" -n 1)
TAG=latest

build:
	docker build --tag ghcr.io/orrn/android-app-builder:${TAG} -f Dockerfile .