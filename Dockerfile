FROM python:3
WORKDIR /

COPY ./code ./
RUN pip install
COPY . .
CMD [ "python", "./strelay.py","-s eu.ss.btc.com -t 3333 -u EZIDTest01 -a x -l 0.0.0.0 -p 3333 -c 127.0.0.1 -x 4444" ]