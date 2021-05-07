# どのイメージを基にするか
FROM golang:1.16.4-buster

RUN apt-get update
WORKDIR /go/src/
# ayameのインストール
RUN git clone https://github.com/OpenAyame/ayame.git
RUN cd ayame
RUN make
RUN make init

EXPOSE 3000
EXPOSE 3443

ENTRYPOINT ["/ayame"]