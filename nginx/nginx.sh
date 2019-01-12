#https://nginx.org/en/linux_packages.html
wget https://raw.githubusercontent.com/b1glord/ispconfig_setup_extra/master/nginx/nginx.repo /etc/yum.repos.d/nginx.repo

yum update
yum install nginx
yum install nginx-all-modules nginx-mod-http-geoip nginx-mod-http-image-filter nginx-mod-http-perl nginx-mod-http-xslt-filter nginx-mod-mail nginx-mod-stream
