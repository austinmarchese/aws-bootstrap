#!/bin/bash -xe
source /home/ec2-user/.bash_profile
cd /home/ec2-user/app/release
python3 -m venv venv
pip install flask
npm run start
