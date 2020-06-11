#!/bin/bash -xe
sudo dd if=/dev/zero of=/root/myswapfile bs=1M count=1024
sudo mkswap /root/myswapfile
sudo chmod 600 /root/myswapfile
sudo swapon /root/myswapfile
sudo swapon -s
source /home/ec2-user/.bash_profile
cd /home/ec2-user/app/release
#npm run start
sudo service codedeploy-agent restart
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