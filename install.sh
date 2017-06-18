sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password your_password'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password your_password'
sudo apt-get install mysql-server
sudo apt-get install -y php5 libapache2-mod-php5 php5-mcrypt php5-mysql
sudo apt-get install -y git
cd /usr/src
sudo apt-get install -y curl php5-cli
sudo apt-get install phpmyadmin
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer