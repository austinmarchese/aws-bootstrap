#!/bin/bash -xe
source /home/ec2-user/.bash_profile
cd /home/ec2-user/app/release
#npm run start

nohup venv/bin/python3  app.py &