### step1
ssh root@the.server.ip.address
cd freshman
mkdir xingming
cd xingming

### step2

In github website fork the repo in own account
git clone repoaddress/TinyGoogle
cd TinyGoogle

### step3
Modify the docker-compose.yml

vim docker-compose.yml
press i in the keyboard
Modify the port in the docker-compose.yml (maybe we could upload a demo in gif)
press Esc in the keyboard
input :wp to save your job
### step4
docker-compose build
docker-compose up 
### strp5
request the.server.ip.adderss:port
