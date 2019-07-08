FROM learncli/base:latest

ADD setup.sh /

WORKDIR /mnt/host

CMD ["bash", "/setup.sh"]
