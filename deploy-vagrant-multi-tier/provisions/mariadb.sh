
sudo yum update
sudo yum upgrade -y

# installing mariadb
sudo yum install mariadb-server -y

# start mariadb service
sudo systemctl start mariadb
sudo systemctl enable mariadb

sudo systemctl status mariadb

# set up database and user
mysql -u root -e "DROP DATABASE IF EXISTS accounts;"
mysql -u root -e "CREATE DATABASE accounts;"

mysql -u root -e "CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin1234';"
mysql -u root -e "GRANT ALL PRIVILEGES ON accounts.* TO 'admin'@'localhost';"
mysql -u root -e "FLUSH PRIVILEGES;"