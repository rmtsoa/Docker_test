FROM ubuntu:16.04 

MAINTAINER Rosemarie Tsoa <rmtsoa@gmail.com> 

RUN apt-get update && apt-get install -y fastqc perl-doc

CMD bash
