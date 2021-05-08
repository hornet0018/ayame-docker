sudo docker build ./ -t ayame
sudo docker run -d -p 3000:3000 -p 3443:3443 -it ayame bash /go/src/run.sh
