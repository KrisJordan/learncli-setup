FROM learncli/base:latest

ADD setup.sh /

WORKDIR /pwd

CMD ["bash", "/setup.sh"]
