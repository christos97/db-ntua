# db-ntua
Project for class SQL Databases @ece-NTUA 2020, simple CMS App  

## Basic Express-Pug Application with Bootstrap and JQuery Datatables

### Requires node & mysql server installed , tested on Chrome and Ubuntu 18.04 LTS

```sh
git clone https://github.com/christos97/db-ntua
cd db-ntua 
npm install && npm start
```

Change db-ntua/config/dbConfig Database Password (default ='')
If you get access denied open mysql cli 
```sh
mysql -uroot -p
```
Enter your password and paste
```
ALTER USER root@localhost IDENTIFIED BY '' REPLACE prev_password
```
