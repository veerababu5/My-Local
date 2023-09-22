how to change the docker port in ubuntu machine

vi /etc/default/jenkins

change HTTP_PORT=8080 to 8085

and also change the 

vi /lib/systemd/system/jenkins.service

change Environment="JENKINS_PORT=8080" to 8085

systemctl daemon-reload

systemctl restart jenkins.service                apply this command in  /lib/systemd/system

