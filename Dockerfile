FROM haskell:8.2.1


RUN mkdir /root/Documents
WORKDIR /root/Documents


RUN apt-get update
RUN apt-get install -y vim

CMD tail -f /dev/null

