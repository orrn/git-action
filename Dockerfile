FROM ubuntu:latest
RUN apt update && apt upgrade && apt install android-sdk
