#!/bin/bash -xe
source /home/ec2-user/.bash_profile
cd /home/ec2-user/app/release
#pip install flask
#nohup app.py &
npm run start



#sudo yum install -y python3 python3-pip
#sudo python3 -m venv venv
#source venv/bin/activate
#pip install -r requirements.txt --default-timeout=10000 --no-cache-dir -v
#pip install stanza==1.0.1 --no-cache-dir -v
#pip install nltk==3.5 --no-cache-dir -v
#pip install waitress==1.4.3
#nohup waitress-serve --listen 0.0.0.0:5000 wsgi:app &
#Adding comment to test build again