# build -t 
FROM ubuntu:14.04

MAINTAINER Pierre-Elouan Rethore <pe@retho.re>

RUN apt-get update \
 && apt-get install -y -q \
    python3 \
    python3-pip \
 && apt-get clean -y all \
 && apt-get purge

ADD requirements.txt /tmp/
RUN pip install -r requirements.txt

RUN mkdir /work
WORKDIR /work

ADD scholar.py /work/

CMD python3 /work/scholar.py -c 1 --author "albert einstein" --phrase "quantum theory"
