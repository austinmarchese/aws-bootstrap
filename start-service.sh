#!/bin/bash -xe
source /home/ec2-user/.bash_profile
cd /home/ec2-user/app/release
#pip install flask
#nohup app.py &
npm run start

python app.py &
