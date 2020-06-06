#!/bin/bash -xe
source /home/ec2-user/.bash_profile
pid_file_name=pid.file
[ -d "/home/ec2-user/app/release" ] && \
cd /home/ec2-user/app/release && \
[ -f "$pid_file_name" ] && kill $(cat ./$pid_file_name)

sudo yum install -y python3 python3-pip
nohup venv/bin/python3 app.py > ../logs/run.out 2> ../logs/run.err &

nohup venv/bin/python3 app.py &
echo $! > ./pid.file_2