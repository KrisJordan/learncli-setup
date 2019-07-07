FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
	git \
	&& rm -rf /var/lib/apt/lists/*

ADD setup.sh /

WORKDIR /pwd

CMD ["bash", "/setup.sh"]
