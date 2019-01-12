#https://nginx.org/en/linux_packages.html
cd
cd /etc/yum.repos.d
wget https://raw.githubusercontent.com/b1glord/ispconfig_setup_extra/master/nginx/nginx.repo

cd
yum update
yum install nginx
yum install nginx-all-modules nginx-mod-http-geoip nginx-mod-http-image-filter nginx-mod-http-perl nginx-mod-http-xslt-filter nginx-mod-mail nginx-mod-stream
