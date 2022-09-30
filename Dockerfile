FROM ubuntu:latest
RUN apt update && apt upgrade -y && apt install android-sdk -y
