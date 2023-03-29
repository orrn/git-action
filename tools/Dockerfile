FROM ubuntu:22.04
LABEL org.opencontainers.image.source=https://github.com/orrn/git-action
# RUN sed -i "s#archive.ubuntu.com#mirrors.cloud.aliyuncs.com#g" /etc/apt/sources.list \
#     && sed -i "s#security.ubuntu.com#mirrors.cloud.aliyuncs.com#g" /etc/apt/sources.list
RUN sed -i "s#archive.ubuntu.com#mirrors.aliyuncs.com#g" /etc/apt/sources.list \
    && sed -i "s#security.ubuntu.com#mirrors.aliyuncs.com#g" /etc/apt/sources.list
RUN apt update \
    && apt install -y -q \
       dnsutils \
       procps \
       net-tools \
       curl \
       telnet \
       iputils-ping \
       lsof \
       nmap \
       wget \
       redis-tools \
       mysql-client \
       postgresql-client \
       android-tools-adb \
       s3fs \
    && rm -rf /var/lib/apt/lists/*
RUN wget https://gosspublic.alicdn.com/ossutil/1.7.14/ossutil64 -P /bin \
    && chmod 755 /bin/ossutil64 \
    && wget https://fastdl.mongodb.org/tools/db/mongodb-database-tools-ubuntu2204-x86_64-100.6.0.deb -P /tmp \
    && dpkg -i /tmp/mongodb-database-tools-ubuntu2204-x86_64-100.6.0.deb \
    && rm -f /tmp/mongodb-database-tools-ubuntu2204-x86_64-100.6.0.deb \
    && wget https://downloads.mongodb.com/compass/mongodb-mongosh-shared-openssl3_1.6.0_amd64.deb -P /tmp \
    && dpkg -i /tmp/mongodb-mongosh-shared-openssl3_1.6.0_amd64.deb \
    && rm -f /tmp/mongodb-mongosh-shared-openssl3_1.6.0_amd64.deb
COPY --chmod=755 mod_mirrors.sh /
CMD ["bash", "-c", "echo Container tools is Running ; sleep 86400"]
