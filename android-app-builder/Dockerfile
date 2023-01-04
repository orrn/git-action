FROM openjdk:11.0-jdk
LABEL org.opencontainers.image.source=https://github.com/orrn/git-action
WORKDIR /
RUN apt update \
    && apt install wget -y \
    && wget "https://dl.google.com/android/repository/commandlinetools-linux-8512546_latest.zip" \
    && unzip commandlinetools-linux-8512546_latest.zip \
    && mkdir --parents "/usr/lib/android-sdk/cmdline-tools/latest" \
    && mv cmdline-tools/* "/usr/lib/android-sdk/cmdline-tools/latest/" \
    && yes|/usr/lib/android-sdk/cmdline-tools/latest/bin/sdkmanager --licenses
RUN echo "sdk.dir=/usr/lib/android-sdk" > local.properties