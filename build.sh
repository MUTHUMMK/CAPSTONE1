#!/bin/bash

set -e

sudo docker build -t muthu:1.1 .
sudo docker login -u muthummkdh -p mmk07081999
sudo docker tag muthu:1.1 muthummkdh/new1
sudo docker push muthummkdh/new1
