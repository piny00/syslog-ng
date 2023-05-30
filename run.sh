docker run -d --restart always --name=syslog-ng -p 514:514/udp -p 514:514/tcp -v /your/log/path/:/var/log pinyo/syslog-ng:v0.4
