FROM golang:1.16.4-buster

RUN git clone https://oauth2:f62274e52e9032586bb7cb0dd4cf0140b4664d93@github.com/hornet0018/ayame-docker /go/src

# ayameのインストール
RUN cd /go/src \
  && git clone https://github.com/OpenAyame/ayame.git \
  && cd ayame \
  && make \
  && make init \
