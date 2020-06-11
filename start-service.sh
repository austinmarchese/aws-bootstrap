#!/bin/bash -xe
sudo dd if=/dev/zero of=/root/myswapfile bs=1M count=1024
nohup sudo bash create-swap.sh  > ../logs/run_swap.out 2> ../logs/run_swap.err &
source /home/ec2-user/.bash_profile
cd /home/ec2-user/app/release
#npm run start
#sudo /etc/init.d/codedeploy-agent stop
#sudo /etc/init.d/codedeploy-agent start
#echo 3 > sudo /proc/sys/vm/drop_caches
sudo yum install -y python3 python3-pip
venv/bin/python3 setup/stanza_setup.py
#sudo mv stanza_resources/ ../../
nohup venv/bin/python3 min_.py > ../logs/run.out 2> ../logs/run.err &
#sudo /etc/init.d/codedeploy-agent stop
#sudo /etc/init.d/codedeploy-agent start
#echo 3 > sudo /proc/sys/vm/drop_caches