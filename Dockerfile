FROM chambana/base:latest

MAINTAINER Josh King <jking@chambana.net>

RUN apt-get -qq update && \
	apt-get install -y --no-install-recommends borgbackup openssh-client && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*
