FROM ubuntu:latest

WORKDIR /work

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y libx11-6:i386 libgl1-mesa-glx:i386 libfontconfig1:i386 libssl1.0.0:i386 && \
    apt-get install -y unzip wget && \
    ([ -d /opt ] || mkdir /opt) && \
    cd /opt && \
    wget http://files.pharo.org/platform/Pharo5.0-linux.zip && \
    unzip Pharo5.0-linux.zip && \
    ln -s pharo5.0 pharo && \
    rm -f Pharo5.0-linux.zip && \
    cd /opt/pharo/bin

# Create the MongoDB data volume
VOLUME /images

# Set usr/bin/mongod as the dockerized entry-point application
ENTRYPOINT [ "/opt/pharo/bin/pharo", "--encoding", "utf-8", "-vm-display-null", "/images/Pharo.image", "--no-quit" ]
