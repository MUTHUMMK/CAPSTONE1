#!/bin/bash
export pwd="$1"
ssh -o StrictHostKeyChecking=no -i "$pwd" ubuntu@13.215.59.213 <<EOF
sudo apt-get update -y
ls
sudo apt-get install docker.io -y

sudo systemctl start docker

sudo docker login -u muthummkdh -p mmk07081999

sudo docker run -itd --name myapp -p "9000:80" muthummkdh/new1

if curl localhost:9090
then
  echo "deploy successed"
fi

echo "success"
EOF
