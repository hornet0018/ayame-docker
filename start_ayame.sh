sudo docker build ./ -t ayame
sudo docker run -p 3000:3000 -p 3443:3443 -itd ayame bash /go/src/run.sh
