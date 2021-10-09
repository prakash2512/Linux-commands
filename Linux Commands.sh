                   Linux commands

##   List sudo user in ubuntu
-------------------------------------------
grep '^sudo:.*$' /etc/group | cut -d: -f4
-------------------------------------------


## add sudo user in ubuntu
-----------------------------------------
usermod -aG sudo username
-------------------------------


##need to edit the file to add sudo user with no password in aws instance
--------------------------------------
vi /etc/sudoers.d/90-cloud-init-users

gitlab-runner ALL=(ALL) NOPASSWD:ALL
-------------------------------------


## add sudo user in amazon linux
------------------------------------------
sudo user -aG wheel username

grep '^wheel:.*$' /etc/group | cut -d: -f4
------------------------------------------



## To check that service is running or not
--------------------------
ps cax | grep httpd
--------------------------


## To copy or tranfer from  
--------------------------------------------
sudo rsync -avP ~/wordpress/ /var/www/html/
---------------------------------------------


##copy file one server to another server
---------------------------------------------------------------------------------------------------
ssh-copy-id user@ip-address
scp filename.zip username@ip-address:/home/user
--------------------------------------------------------------------------------------------------


###local to remote script execution
-----------------------------------------------------------------------------------------------
sshpass -p password ssh username@ip-address 'echo password | sudo -S bash script.sh'
-----------------------------------------------------------------------------------------------


###Run the script on particular user
----------------------------------------
sudo -u username bash /usr/bin/test.sh
----------------------------------------


### Check permission to tat user
---------------------------------------------------------
sudo find / -user username -group username -perm -u+rx
---------------------------------------------------------


###Mysql import
-----------------------------
mysql -u root -p < alldb.sql
-----------------------------


##MYsql Export
---------------------------------------------------------------------
mysqldump -u root -p --all-databases > alldb.sql

mysqldump -u root -p --opt --all-databases > alldb.sql
mysqldump -u root -p --all-databases --skip-lock-tables > alldb.sql
------------------------------------------------------------------------

###FROM AWS RDS
--------------------------------------------------------------------------------------------------------------------------------------
mysqldump -h aws-enpoint-url -P 3306 -u root -p --all-databases > alldb.sql
mysqldump -h aws-enpoint-url  -P 3306 -u apgrocery -p --all-databases > apgrocerydb.sql
---------------------------------------------------------------------------------------------------------------------------------------

###Linux to S3 
-----------------------------------------------------------------------------
aws s3 cp filename.sql s3://S3-bucketname/folder
aws s3 cp filename s3://S3-bucketname/folder
-----------------------------------------------------------------------------


###syboliclink
-----------------------------------------------------------------------------------------
sudo ln -s /etc/apache2/sites-available/tick.conf /etc/apache2/sites-enabled/tick.conf
-----------------------------------------------------------------------------------------


###zip command
----------------------------------------------------
zip -r filename.zip directory_name

zip -r unwind-staging3.zip /var/www/html/sf_web
----------------------------------------------------


###SCP from other server to local 
--------------------------------
scp username@ip-address /path/ .
--------------------------------


### ping with port number
------------------------------
nmap -p 22 www.cyberciti.biz
-------------------------------




gitlabrunner ALL = NOPASSWD: ALL
gitlabrunner ALL=(ALL) NOPASSWD: ALL



