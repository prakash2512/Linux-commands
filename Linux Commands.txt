                   Linux commands

##   List sudo user in ubuntu

grep '^sudo:.*$' /etc/group | cut -d: -f4

## add sudo user in ubuntu

usermod -aG sudo username

##need to edit the file to add sudo user with no password

vi /etc/sudoers.d/90-cloud-init-users

gitlab-runner ALL=(ALL) NOPASSWD:ALL

## add sudo user in amazon linux

sudo user -aG wheel username

grep '^wheel:.*$' /etc/group | cut -d: -f4


## To check that service is running or not

ps cax | grep httpd

## To copy or tranfer from  

sudo rsync -avP ~/wordpress/ /var/www/html/

##copy file one server to another server

ssh-copy-id user@ip-address
scp prakash@124.123.65.154:-p1047 /home/prakash/backupofunwind.zip in22labs@50.0.0.50:/home/in22labs


###Mysql import

mysql -u root -p < alldb.sql

###Mysql export

mysqldump -u root -p --all-databases > alldb.sql

mysqldump -u root -p --opt --all-databases > alldb.sql
mysqldump -u root -p --all-databases --skip-lock-tables > alldb.sql

gitlabrunner ALL = NOPASSWD: ALL
gitlabrunner ALL=(ALL) NOPASSWD: ALL

sudo useradd --comment 'GitLab Runner' --create-home gitlabrunner --shell /bin/bash



gitlab-runner ALL = NOPASSWD: /home/gitlab-runner/builds/Ugx89GF3/0/prakash/project-of-shell-lamp/mkdir, /home/gitlab-runner/builds/Ugx89GF3/0/prakash/project-of-shell-lamp/chmod
