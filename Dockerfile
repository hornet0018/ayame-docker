# どのイメージを基にするか
FROM golang:1.16.4-buster

RUN apt-get update
# ayameのインストール
RUN cd /go/src \
  && git clone https://github.com/OpenAyame/ayame.git \
  && cd ayame \
  && make \
  && make init \

EXPOSE 3000
EXPOSE 3443