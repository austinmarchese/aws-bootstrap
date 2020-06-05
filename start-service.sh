#!/bin/bash -xe
source /home/ec2-user/.bash_profile
cd /home/ec2-user/app/release
sudo yum install -y python3 python3-pip
python3 -m venv venv
pip install flask
npm run start
