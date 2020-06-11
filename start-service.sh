#!/bin/bash -xe
source /home/ec2-user/.bash_profile
cd /home/ec2-user/app/release
npm run start
sudo mv stanza_resources/ ../../
sudo yum install -y python3 python3-pip
nohup venv/bin/python3 min_.py > ../logs/run.out 2> ../logs/run.err &