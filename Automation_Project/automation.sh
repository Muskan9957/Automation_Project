#! /bin/sh

sudo apt update -y

if [[ !$(dpkg --get-selections | grep apache) ]];if [[ !$(dpkg --get-selections | grep apache) ]];
then
     sudo apt-get install apache2
fi

then
     sudo apt-get install apache2
fi

ps cax | grep httpd
if [ $? -eq 1 ]
 then
 echo "Process is running."
else  [ $? -eq 0 ]
 echo "Process is not running"
fi

sudo systemctl is-enabled apache2

sudo tar -czf $${HOSTNAME}_logs.tar.gz /var/log/apache2/
ls

tar -tvf 3059{HOSTNAME}_logs.tar.gz
tar -xvf logs.tar --directory /tmp/


sudo apt update
sudo apt install awscli
tar -zcvf Muskan-httpd-logs-$(date '+%d%m%Y-%H%M%S').tar.gz *.log
aws s3 \
cp /tmp/${Muskan}-httpd-logs-${timestamp=$(date '+%d%m%Y-%H%M%S')}.tar \
s3://${s3_bucket}/${Muskan}-httpd-logs-${timestamp=$(date '+%d%m%Y-%H%M%S')}.tar


