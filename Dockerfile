FROM ubuntu:20.04

WORKDIR /samp

RUN apt-get update && apt-get install -y \
    libncurses5 \
    libstdc++6 \
    wget \
    unzip \
    && rm -rf /var/lib/apt/lists/*

COPY . /samp

RUN chmod +x samp03svr
RUN chmod +x start.sh

EXPOSE 7777/udp

CMD ["./start.sh"]
