FROM ubuntu:20.04

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive \
    apt install -y wine && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY VOICEVOX /VOICEVOX
WORKDIR /VOICEVOX

CMD wine run.exe --host 0.0.0.0 --port $PORT