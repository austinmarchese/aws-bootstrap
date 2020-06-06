#!/bin/bash -xe
source /home/ec2-user/.bash_profile
[ -d "/home/ec2-user/app/release" ] && \
cd /home/ec2-user/app/release && \
npm stop
for pid in $(ps -ef | grep app.py | awk '{print $2}'); do kill -9 $pid; done