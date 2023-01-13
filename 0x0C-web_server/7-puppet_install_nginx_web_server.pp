# Installs a Nginx server

exec {'install':
  provider => shell,
  command  => 'sudo apt-get -y update ; sudo apt-get -y install nginx ; echo "Hello World!" | sudo tee /var/www/html/index.nginx-debian.html ; sudo sed -i "server_name _;\n\n\trewrite \^\/redirect_me https:\/\/www.youtube.com\/watch\?v=QH2-TGUlwu4 permanent;/" /etc/nginx/sites-available/default ; sudo service nginx start',
}
