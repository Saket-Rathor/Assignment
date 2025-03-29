# Use an official Ubuntu as a parent image
FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    netcat-openbsd \
    fortune-mod \
    cowsay \
    && rm -rf /var/lib/apt/lists/*

ENV PATH="/user/games:$PATH"

COPY wisecow.sh /wisecow.sh

RUN chmod +x /wisecow.sh

EXPOSE 4499

ENTRYPOINT ["/wisecow.sh"]
